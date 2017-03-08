#include <iostream>
#include <conio.h>
#include <Windows.h>
#include <string.h>
#include <iomanip>
#include <ctype.h>
#include <stdio.h>

using namespace std;

// структура для определения цветов текста
enum colors {
		BLACK, BLUE, GREEN, CYAN, RED, MAGENTA, BROWN, LIGHTGREY,
		DARKGREY, LIGHTBLUE, LIGHTGREEN, LIGHTCYAN, LIGHTRED, LIGHTMAGNETA,
		YELLOW, WHITE, BLINK = 128
};

// входная структура
struct ins{
	char group_code[7];
	char discp_code[7];
	struct mark{
		int excl;
		int good;
		int stfy;
		int bad;
	} marks;
	struct gap{
		int lects;
		int pract;
	} gaps;
};

// выходная структура
struct outs{
	char group_code[7];
	float mean_mark;
	struct mark{
		int excl;
		int good;
		int stfy;
		int bad;
	} marks;
};

// структура записи
struct ln{
	ins in;
	ln *next;
	ln *prev;
};

//------Функции для создания интерфейса пользователя-------
void gotoxy(int, int);					// перемещение курсора по экрану
void setborder(unsigned short int, int, int, int, int);		// печать рамки
void drawDialog(const char*, int, int, int, int);		// печать диалогового окна
void setcolor(WORD);				// установка цвета текста
void uidraw(ln*);					// печать интерфейса (баннер, меню)
void clrarea(void);					// очистка рабочей области экрана
void drawEditDialog(int, ln);				// печать диалога редактирования
void redrawVerticals(long);				// печать вертикальных линий
ln* lnPrintList(ln*, ln*, long, long);			// печать списка
int CoutStruct(ln*);					// вывод строки данных
int askUser(char*);					// запрос пользователю
//------Функции для реализации логики-----------------
int exportList(ln*, char*);				// экспорт базы в текстовый файл + выходная таблица
ln* importList(ln*, ln*, char*, long&, long&);		// импорт базы из текстового файла
char* editstring(char *);				// защищенное редактирование строки
char* readPath(void);					// считывание пути к файлу
ln forminit(void);					// инициализация формы
ln lnDataFill(const ln&);				// заполнение записи
ln* lnAddInHead(const ln&, long&);			// добавление в начало списка
ln* lnAddInTail(ln*, const ln&, long&);			// добавление в конец списка
ln* searchLine(ln *head, long&);			// поиск элемента
ln* lnDeleteLine(ln*, ln*, ln*, long, long&);		// удаление элемента
long editint(long);					// защищенное редактирование числового значения
int structChecked(ln);					// проверка структуры
int clearList(ln*);					// очистка списка
int BubbleSort(ln*);					// сортировка пузырьком
int writeBinary(ln*, char*);				// запись в бинарный файл
ln *readBinary(ln*&, ln*&, char*, long&, long&);		// чтение из бинарного файла

int main(){
	ln *head = NULL; ln *tail = NULL;
	ln *temp = NULL, *buff = NULL;
	int ch = 0;
	long current = 1;
	long lines_count = 0;
	FILE *ftemp = NULL;
	char path[256];

	long i;
	ln data;

	SetConsoleTitle("Student Data Base");
	uidraw(temp = lnPrintList(head,tail,current,lines_count)); // отрисовка интерфейса

	readBinary(head, tail, "base.dat", current, lines_count); // чтение из бинарного файла
	if (head) tail = head->prev;
	temp = head;

	while (1){
		uidraw(temp = lnPrintList(head,tail,current,lines_count)); // отрисовка интерфейса
		ch = getch();
		if (ch == 0) ch = getch();
		switch (ch) {
			case 59: // F1 // добавление
				if (lines_count == 99999) { // защита от переполнения списка
					drawDialog("", 19, 11, 63, 15);
					gotoxy(21, 13); cout<<"Достигнуто максимальное количество записей";gotoxy(1, 1);
					cin.get(); clrarea(); uidraw(0);
					break;
				}
				data = lnDataFill(forminit());  // сохранение результата в буферной переменной
				if (!structChecked(data)) {      // если результат удачен, произвести добавление
					uidraw(0);
					break;
				}

				if (!head) {
					head = tail = lnAddInHead(data, lines_count);
					current = 1;
				} else tail = lnAddInTail(tail, data, lines_count);
				BubbleSort(head); //отсортировать
				clrarea(); redrawVerticals(lines_count); uidraw(0);
				break;
			case 60: // F2 // редактирование
				if (!temp) break;
				if (!structChecked(data = lnDataFill(*temp))) {
					uidraw(0);
					break;
				}
				*temp = data;
				clrarea(); uidraw(0);
				break;
			case 61: // F3 // удаление
				if (!temp) break;
				else if (askUser(" Удалить выбранный элемент?")) {
					clrarea(); uidraw(0); break;
				}
				i = current;
				if (current == 1 && current != lines_count) head = lnDeleteLine(temp,head,tail,current,lines_count);
				else if (current == lines_count) {
					if (current == 1) {
						delete temp;
						head = tail = temp = NULL;
						--current; --lines_count;
					} else {
						tail = lnDeleteLine(temp,head,tail,current,lines_count);
						--current;
					}
				} else temp = lnDeleteLine(temp,head,tail,current,lines_count);
				clrarea(); uidraw(0);
				redrawVerticals(lines_count);
				break;
			case 62: // F4 // поиск
				temp = searchLine(head, current);
				cin.get(); clrarea(); uidraw(0);
				break;
			case 63: // F5
				exportList(head, readPath());
				cin.get(); clrarea(); uidraw(0);
				break;
			case 72: // up // переместиться вверх по списку
				if (--current < 1 ) current = lines_count;
				break;
			case 80: // down // переместиться вниз по списку
				if (++current > lines_count) current = 1;
				break;
			case 64: // F6 // импорт
				strcpy(path, readPath());
				if ((ftemp = fopen(path, "rt")) == NULL) { clrarea(); uidraw(0); break; };
				if (head) {
					clearList(head);
					lines_count = current = 0;
					head = tail = temp = NULL;
				}
				head = importList(head, tail, path, current, lines_count);
				if (head) {
					tail = head->prev;
					temp = head;
					BubbleSort(head);
				}
				cin.get(); clrarea(); uidraw(0);
				break;
			case 27: // выход по нажатию клавиши эскейп
				if (!askUser("     Выйти из программы?")) {
					writeBinary(head, "base.dat");
					return 0;
				}
				clrarea(); uidraw(0);
				break;
		}
	}
	cin.get();
	return 0;
}

// перемещение указателя на координату х у
void gotoxy(int x, int y){
	COORD cord;
	cord.X = x - 1;
	cord.Y = y - 1;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), cord);
}

// печать рамки
void setborder(unsigned short int style, int x1, int y1, int x2, int y2){
	int i = x1; char items[6];

	enum border_type {
		LEFT_TOP, RIGHT_TOP, LEFT_BOTTOM, RIGHT_BOTTOM, HORIZONTAL, VERTICAL
	};

	switch (style) {
		default: case 0: case 1:
			items[LEFT_TOP] = (char)201;  	items[RIGHT_TOP] = (char)187;
			items[LEFT_BOTTOM] = (char)200;	items[RIGHT_BOTTOM] = (char)188;
			items[HORIZONTAL] = (char)205; 	items[VERTICAL] = (char)186;
			break;
	}

	gotoxy(x1, y1);
	cout<<items[LEFT_TOP]; while (++i <= x2) cout<<items[HORIZONTAL];
	cout<<items[RIGHT_TOP];
	for (i = y1+1; i<y2; i++){
		gotoxy(x1,i), cout<<items[VERTICAL];
		gotoxy(x2+1,i), cout<<items[VERTICAL];
	}; i = x1;
	gotoxy(x1,y2);
	cout<<items[LEFT_BOTTOM]; while (++i <= x2) cout<<items[HORIZONTAL];
	cout<<items[RIGHT_BOTTOM];
}

// печать диалога и заголовком title в координатах x1, y1, x2, y2
void drawDialog(const char *title, int x1, int y1, int x2, int y2){

	setcolor(BLACK);
	for (int i = x1; i <= x2; i++)
		for (int j = y1; j <= y2; j++){
			gotoxy(i,j);
			cout<<(char)186;
		}
	setcolor(WHITE);
	setborder(0, x1, y1, x2, y2);
	gotoxy(x1+3, y1);
	cout<<title;
	setcolor(LIGHTGREY);
}

// установка цвета текста
void setcolor(WORD color){
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),color);
	return;
}

// печать интерфейса (шапка таблицы, строка меню)
void uidraw(ln* print_check){
	int i;
	char *items[] = {
			" F1 Добавить ",
			"  F2 Редакт.",
			"    F3 Удалить ",
			"    F4 Найти ",
			"   F5 Экспорт ",
			"  F6 Импорт"
	};

	char banner[5][80] = {
	{201,205,205,205,205,205,205,205,205,205,205,205,205,203,205,205,205,205,205,205,205,205,205,205,205,205,203,
     205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,203,
     205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,187},

   {186,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',186,
     ' ',' ',' ',' ','К','о','л','и','ч','е','с','т','в','о',' ','о','ц','е','н','о','к',' ',' ',' ',' ',' ',' ',186,
     ' ',' ',' ',' ',' ',' ',' ',' ','П','р','о','п','у','щ','е','н','о',' ',' ',' ',' ',' ',' ',' ',186},

    {186,' ',' ',' ',' ','Ш','и','ф','р',' ',' ',' ',' ',186,' ',' ',' ',' ','Ш','и','ф','р',' ',' ',' ',' ',204,
     205,205,205,205,205,205,203,205,205,205,205,205,205,203,205,205,205,205,205,205,203,205,205,205,205,205,205,206,
     205,205,205,205,205,205,205,205,205,205,205,205,203,205,205,205,205,205,205,205,205,205,205,205,185},

    {186,' ',' ',' ','г','р','у','п','п','ы',' ',' ',' ',186,' ','д','и','с','ц','и','п','л','и','н','ы',' ',186,
     ' ','О','т','л','.',' ',186,' ','Х','о','р','.',' ',186,' ',' ','У','д','.',' ',186,' ','Н','е','у','д','.',186,
     ' ',' ',' ','Л','е','к','ц','и','й',' ',' ',' ',186,' ',' ','П','р','а','к','т','и','к',' ',' ',186},

    {204,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,205,205,205,205,205,206,
     205,205,205,205,205,205,206,205,205,205,205,205,205,206,205,205,205,205,205,205,206,205,205,205,205,205,205,206,
     205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,205,205,205,205,185}
    };

	if (print_check == NULL) {
		gotoxy(34,2); cout<<"";
		setborder(0, 1, 1, 79, 24);
		setcolor(WHITE);
		for (i = 0; i < 6; i++) cout<<items[i];
		setcolor(LIGHTGREY);
		for (i = 0; i < 5; i++) { gotoxy(1, i + 1); cout<<banner[i]; }
		gotoxy(1,6); cout<<(char)186; gotoxy(1,7); cout<<(char)186;
		gotoxy(14,24); cout<<(char)206; gotoxy(14,25); cout<<(char)186;
		gotoxy(27,24); cout<<(char)206; gotoxy(27,25); cout<<(char)186;
		gotoxy(34,24); cout<<(char)202; gotoxy(41,24); cout<<(char)206;
		gotoxy(41,25); cout<<(char)186; gotoxy(48,24); cout<<(char)202;
		gotoxy(55,24); cout<<(char)206; gotoxy(55,25); cout<<(char)186;
		gotoxy(68,24); cout<<(char)206; gotoxy(68,25); cout<<(char)186;
		gotoxy(1,24); cout<<(char)204; gotoxy(80,24); cout<<(char)185;
		gotoxy(1,25); cout<<(char)186; gotoxy(80,25); cout<<(char)186;

		for (i = 6; i < 24; i++) {
			gotoxy(2,i);
			cout<<setw(12)<<" "<<(char)186 <<setw(12)<<" "<<(char)186
				<<setw(6)<<" "<<(char)186 <<setw(6)<<" "<<(char)186
				<<setw(6)<<" "<<(char)186 <<setw(6)<<" "<<(char)186
				<<setw(12)<<" "<<(char)186 <<setw(11)<<" ";
		}
	}
    gotoxy(1,1);
}

// очистка рабочей области
void clrarea(void){
	for (int j = 2; j <= 22; j++){ gotoxy(2,j); cout<<"                                                                              "; }
}

// печать диалога редактирования
void drawEditDialog(int selected, ln data){
	CONSOLE_SCREEN_BUFFER_INFO cinf;
	GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cinf);

	// получение положения курсора
	int x = cinf.dwCursorPosition.X,
		y = cinf.dwCursorPosition.Y;
	int i;

	char items[21][33] = {
 {' ',201,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,203,205,205,205,205,205,205,205,187,' '},
 {' ',186,' ',' ',' ',' ',' ','Ш','и','ф','р',' ','г','р','у','п','п','ы',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',204,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,185,' '},
 {' ',186,' ',' ',' ','Ш','и','ф','р',' ','д','и','с','ц','и','п','л','и','н','ы',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',200,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,202,205,205,205,205,205,205,205,188,' '},
 {' ',201,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,203,205,205,205,205,205,205,205,187,' '},
 {' ',186,' ',' ',' ',' ',' ',' ',' ','О','т','л','и','ч','н','о',' ',' ',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',204,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,185,' '},
 {' ',186,' ',' ',' ',' ',' ',' ',' ',' ','Х','о','р','о','ш','о',' ',' ',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',204,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,185,' '},
 {' ',186,' ',' ','У','д','о','в','л','е','т','в','о','р','и','т','е','л','ь','н','о',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',204,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,185,' '},
 {' ',186,' ','Н','е','у','д','о','в','л','е','т','в','о','р','и','т','е','л','ь','н','о',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',200,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,202,205,205,205,205,205,205,205,188,' '},
 {' ',201,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,203,205,205,205,205,205,205,205,187,' '},
 {' ',186,' ',' ',' ',' ',' ',' ',' ',' ','Л','е','к','ц','и','й',' ',' ',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',204,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,206,205,205,205,205,205,205,205,185,' '},
 {' ',186,' ',' ',' ',' ',' ',' ',' ','П','р','а','к','т','и','к',' ',' ',' ',' ',' ',' ',' ',186,' ',' ',' ',' ',' ',' ',' ',186,' '},
 {' ',200,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,202,205,205,205,205,205,205,205,188,' '},

	};

	char selection[3][12] = {
         {201,205,205,205,205,205,205,205,205,205,205,187},
         {186,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',186},
         {200,205,205,205,205,205,205,205,205,205,205,188}};
	//system("cls");
	for (i = 1; i<21; i++){
    for(int j=0; j<33; j++)
    { gotoxy(x + 1+j, y + i); cout<<items[i-1][j]; }
    cout<<endl;
}
	// если поле заполнено, вывести его содержимое
	cout.setf(ios::left);
	if (strcmp(data.in.group_code, "")) gotoxy(x + 25, 4), cout<<setw(6)<<data.in.group_code;
	if (strcmp(data.in.discp_code, "")) gotoxy(x + 25, 6), cout<<setw(6)<<data.in.discp_code;
	if (data.in.marks.excl >= 0) gotoxy(x + 25, 9), cout<<setw(6)<<data.in.marks.excl;
	if (data.in.marks.good >= 0) gotoxy(x + 25, 11), cout<<setw(6)<<data.in.marks.good;
	if (data.in.marks.stfy >= 0) gotoxy(x + 25, 13), cout<<setw(6)<<data.in.marks.stfy;
	if (data.in.marks.bad >= 0) gotoxy(x + 25, 15), cout<<setw(6)<<data.in.marks.bad;
	if (data.in.gaps.lects >= 0) gotoxy(x + 25, 18), cout<<setw(6)<<data.in.gaps.lects;
	if (data.in.gaps.pract >= 0) gotoxy(x + 25, 20), cout<<setw(6)<<data.in.gaps.pract;
	cout.setf(ios::right);

	// проверка структуры на заполненность
	if (structChecked(data)) {
		for (i = 0; i < 3; i++){
		for(int j=0; j<12; j++)
        {gotoxy(x + 12+j, y + 20 + i); cout<<selection[i][j];}
        cout<<endl;
        }
		gotoxy(x + 17, y + 21); cout<<"OK";
	} else
    {
        for (i = 0; i < 3; i++)
        {gotoxy(x + 12, y + 20 + i), cout<<setw(12)<<" "<<endl;}
    }

	setcolor(LIGHTGREEN);
	switch (selected) {
		case 1: gotoxy(x + 1, y + 2); cout<<(char)16; gotoxy(x + 33, y + 2); cout<<(char)17; break;
		case 2: gotoxy(x + 1, y + 4); cout<<(char)16; gotoxy(x + 33, y + 4); cout<<(char)17; break;
		case 3: gotoxy(x + 1, y + 7); cout<<(char)16; gotoxy(x + 33, y + 7); cout<<(char)17; break;
		case 4: gotoxy(x + 1, y + 9); cout<<(char)16; gotoxy(x + 33, y + 9); cout<<(char)17; break;
		case 5: gotoxy(x + 1, y + 11); cout<<(char)16; gotoxy(x + 33, y + 11); cout<<(char)17; break;
		case 6: gotoxy(x + 1, y + 13); cout<<(char)16; gotoxy(x + 33, y + 13); cout<<(char)17; break;
		case 7: gotoxy(x + 1, y + 16); cout<<(char)16; gotoxy(x + 33, y + 16); cout<<(char)17; break;
		case 8: gotoxy(x + 1, y + 18); cout<<(char)16; gotoxy(x + 33, y + 18); cout<<(char)17; break;
		case 9:
			if (structChecked(data)) {
				for (i = 0; i < 3; i++){
		        for(int j=0; j<12; j++)
                {gotoxy(x + 12+j, y + 20 + i); cout<<selection[i][j];}
                cout<<endl;}
                gotoxy(x + 17, y + 21); cout<<"OK";
			};
	}
	setcolor(LIGHTGREY);
	gotoxy(1,1);
}

// добавление в конец списка
ln* lnAddInTail(ln *tail, const ln &data, long &lines_count){
	ln *newln = new ln;
	*newln = data;
	newln->next = NULL;
	newln->prev = tail;
	tail->next = newln;
	tail = newln;

	++lines_count;

	return tail;
}

// инициализация записи пустыми значениями
ln forminit(void){
	ln data;

	strcpy(data.in.group_code, "");
	strcpy(data.in.discp_code, "");
	data.in.marks.excl = -1;
	data.in.marks.good = -1;
	data.in.marks.stfy = -1;
	data.in.marks.bad = -1;
	data.in.gaps.lects = -1;
	data.in.gaps.pract = -1;
	data.next = NULL;
	data.prev = NULL;

	return data;
}

// редактирование/добавление записи. при передаче пустой структуры происходит добавление, непустой - редактирование
ln lnDataFill(const ln &input_data){
	ln data = input_data;
	int x1 = 25, y1 = 2,
		x2 = 58, y2 = 25;
	int selected = 1;
	char ch;

	drawDialog("Редактировать/Добавить", x1, y1, x2, y2);

	cout.setf(ios::right);

	while (1) {
		gotoxy(26, 3);
		drawEditDialog(selected, data);
		ch = getch();
		if (ch == 0) ch = getch();
		if (ch == 80) (++selected > (structChecked(data) ? 9 : 8)) ? selected = (structChecked(data) ? 9 : 8) : 0;
		else if (ch == 72) (--selected == 0) ? selected = 1 : 0;
		else if (ch == 27) return data = forminit();
		else if (isalpha(ch) || isdigit(ch) || ch == 13) {
			switch (selected) {
				case 1: gotoxy(x1 + 26, y1 + 3);
						strcpy(data.in.group_code, editstring(data.in.group_code));
						++selected;
						break;
				case 2: gotoxy(x1 + 26, y1 + 5);
						strcpy(data.in.discp_code, editstring(data.in.discp_code));
						++selected;
						break;
				case 3:
						gotoxy(x1 + 26, y1 + 8);
						data.in.marks.excl = editint(data.in.marks.excl);
						++selected;
						break;
				case 4:
						gotoxy(x1 + 26, y1 + 10);
						data.in.marks.good = editint(data.in.marks.good);
						++selected;
						break;
				case 5:
						gotoxy(x1 + 26, y1 + 12);
						data.in.marks.stfy = editint(data.in.marks.stfy);
						++selected;
						break;
				case 6:
						gotoxy(x1 + 26, y1 + 14);
						data.in.marks.bad = editint(data.in.marks.bad);
						++selected;
						break;
				case 7:
						gotoxy(x1 + 26, y1 + 17);
						data.in.gaps.lects = editint(data.in.gaps.lects);
						++selected;
						break;
				case 8:
						gotoxy(x1 + 26, y1 + 19);
						data.in.gaps.pract = editint(data.in.gaps.pract);
						structChecked(data) ? ++selected : 0;
						break;
				case 9:
						if (ch == 13) return data;
			};
		};
	}

	return data;
}

// добавление в начало списка
ln* lnAddInHead(const ln &data, long &lines_count){
	ln *newln = new ln;

	*newln = data;
	newln->next = NULL;
	newln->prev = NULL;

	++lines_count;

	return newln;
}

// печать элементов базы
ln* lnPrintList(ln *head, ln *tail, long current, long lines_count){
	ln *x, *temp;
	long i;
	int shift = 4;

	if (!head) return 0;

	if (current <= (lines_count >= 22 ? 10 : 22 - shift)) {
		for (x = head, i=1+shift; i<=22 && x; i++, x = x->next){
			gotoxy(2,i+1);
			if (i - shift == current) {
				setcolor(YELLOW);
				temp = x;
			}
			CoutStruct(x);
			setcolor(LIGHTGREY);
		}
	} else if (current >= lines_count - shift - 2 && lines_count >= 22 - shift) {
		for (x = tail, i = 22; i >= 1 + shift; i--, x = x->prev){
			gotoxy(2,i+1);
			if ((lines_count - (22 - i)) == current) {
				setcolor(YELLOW);
				temp = x;
			}
			CoutStruct(x);
			setcolor(LIGHTGREY);
		}
	} else {
		for (x = head, i = 1; i < current - 10 && x; i++, x = x->next);
		for (i = 1 + shift; i<=22 && x; i++, x = x->next){
			gotoxy(2,i+1);
			if (i - shift == 11) {
				setcolor(YELLOW);
				temp = x;
			}
			CoutStruct(x);
			setcolor(LIGHTGREY);
		}
	}

	gotoxy(1,1);
	return temp;
}

// вывод структуры на экран (используется для сокращения объема кода)
int CoutStruct(ln *ins){
	if (!ins) return 0;
	else {
		cout<<setw(12)<<ins->in.group_code<<(char)186 <<setw(12)<<ins->in.discp_code<<(char)186
			<<setw(6)<<ins->in.marks.excl<<(char)186 <<setw(6)<<ins->in.marks.good<<(char)186
			<<setw(6)<<ins->in.marks.stfy<<(char)186 <<setw(6)<<ins->in.marks.bad<<(char)186
			<<setw(12)<<ins->in.gaps.lects<<(char)186 <<setw(11)<<ins->in.gaps.pract;
		return 1;
	}
}

// защищенное редактирование строки
char* editstring(char string[]){
	CONSOLE_SCREEN_BUFFER_INFO cinf;
	GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cinf);

	int x = cinf.dwCursorPosition.X,
		y = cinf.dwCursorPosition.Y;

	int i = strlen(string);
	char ch;

	char string_buf[6];
	strcpy(string_buf,string);

	while (ch != 13) {
		cout.setf(ios::left);
		gotoxy(x, y); cout<<setw(6)<<" ";
		gotoxy(x, y); cout<<setw(i)<<string_buf;
		gotoxy(x + i, y);
		ch = getch();
		if ((isalpha(ch) || isdigit(ch))
			&& ch != 75 && ch != 77 && ch != 80
			&& ch != 72 && ch != 13 && i != 6) {
			string_buf[i] = ch;
			string_buf[++i] = '\0';
		};
		if (ch == 8 && i != 0) {
			string_buf[--i] = '\0';
		}
	}

	cout.setf(ios::right);

	return string_buf;
}

// удаление элемента
ln* lnDeleteLine(ln *temp, ln *head, ln *tail, long current, long &lines_count){
	ln *point;

	//выбор, куда будет указывать темп после удаления элемента
	if (temp->next) {
		point = temp->next;
	} else if (temp->prev) {
		point = temp->prev;
	} else point = NULL;

	if (current == 1) { // если элемент первый
		head = temp->next;
		delete temp;
		head->prev = NULL;
		temp = NULL;
		--lines_count;
		return head;
	} else
        if (current == lines_count) { // если элемент последний
            tail = temp->prev;
            delete temp;
            tail->next = NULL;
            temp = NULL;
            --lines_count;
            return tail;
        } else { //иначе
            temp->prev->next = temp->next;
            temp->next->prev = temp->prev;
            delete temp;
            temp = NULL;
            --lines_count;
            return point;
        }
}

// задание вопроса пользователю. 0 в случае отрицательного ответа
int askUser(char *text){
	int x1 = 26, y1 = 10,
		x2 = 54, y2 = 16;
	int selected = 0, i,j;
	char ch;
	char selection[3][12] = {
         {187,205,205,205,205,205,205,205,205,205,205,201},
         {186,' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',186},
         {188,205,205,205,205,205,205,205,205,205,205,200}
};

	drawDialog("Подтверждение", x1, y1, x2, y2);
	gotoxy(x1 + 1, y1 + 1); cout<<text;
	while (1){
        for (i = 0; i < 3; i++) {
			gotoxy(x1 + 1, y1 + 3 + i);
			cout<<setw(26)<<" ";
		}
		for (i = 0; i < 3; i++){
            for (j = 0; j < 12; j++)
            {
                gotoxy(x1 + 3 + 12*selected - j, y1 + 3 + i);
                cout<<setw(12)<<selection[i][j];
            }
            cout<<endl;
        }
        setcolor(WHITE);
        gotoxy(x1, y1 + 3);cout<<(char)186;
        gotoxy(x1, y1 + 4);cout<<(char)186;
        gotoxy(x1, y1 + 5);cout<<(char)186;
		gotoxy(x1 + 4, y1 + 4); cout<<"    OK";
		gotoxy(x1 + 16, y1 + 4); cout<<"  Отмена";
		gotoxy(1, 1);

        ch = getch();
		if (ch == 0) ch = getch();
		switch (ch) {
			case 75: //left
				selected = 0;
				break;
			case 77: //right
				selected = 1;
				break;
			case 13:
				return selected;
		}
	}
}

// редактирование числового значения
long editint(long value){
	CONSOLE_SCREEN_BUFFER_INFO cinf;
	GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cinf);

	int x = cinf.dwCursorPosition.X,
		y = cinf.dwCursorPosition.Y;

	char *string = new char[6];
	char ch;

	if (value < 0) strcpy(string, "");
	else ltoa(value, string, 10);

	int i = strlen(string);

	cout.setf(ios::right);

	while (ch != 13) {
		gotoxy(x, y); cout<<setw(6)<<" ";
		gotoxy(x, y); cout<<setw(i)<<string;
		gotoxy(x + i, y);
		ch = getch();
		if (isdigit(ch) && ch != 75
			&& ch != 77 && ch != 80
			&& ch != 72 && ch != 13 && i != 5) {
			string[i] = ch;
			string[++i] = '\0';
		};
		if (ch == 8 && i != 0) {
			string[--i] = '\0';
		}
	}

	cout.setf(ios::right);

	return (strcmp(string, "") ? atol(string) : -1);
}

// проверка структуры на заполненность
int structChecked(ln data){
	return (!strcmp(data.in.group_code, "") || !strcmp(data.in.discp_code, "")
			|| data.in.marks.excl == -1 || data.in.marks.good == -1
			|| data.in.marks.stfy == -1 || data.in.marks.bad == -1
			|| data.in.gaps.lects == -1 || data.in.gaps.pract == -1) ? 0 : 1;
}

// поиск элемента в базе и установка на него курсора (присвивание current значения счетчика)
ln* searchLine(ln *head, long &current){
	ln *temp = head;
	int x1 = 55, y1 = 18,
		x2 = 78, y2 = 23;
	char *form[] = {"                     ",
                    "  Группа :           ",
                    "                     "},
    ch, input[7];
	strcpy(input, "");
	long counter = 1;

	drawDialog("Поиск", x1, y1, x2, y2);
	for (int i = 0; i < 3; i++){
    for (int j = 0; j < 21; j++)
    { gotoxy(x1 + 2, y1 + 1 + i); cout << form[i]; }
    cout<<endl;
    }
	gotoxy(x1 + 1, y1 + 4);
	cout << "  Введите шифр группы.";
	gotoxy(x1 + 14, y1 + 3);
	strcpy(input, editstring(input));

	while (strcmp(temp->in.group_code, input) && temp->next) {
		temp = temp->next;
		++counter;
	}

	gotoxy(x1 + 1, y1 + 4);
	if (!strcmp(temp->in.group_code, input)) {
		cout << "        Успешно!      ";
		current = counter;
		return temp;
	} else cout << "   Элемент не найден.  ";

}

// считывание пути к файлу
char *readPath(void){
	int x1 = 10, y1 = 13,
		x2 = 71, y2 = 17;
	static char path[255];
	strcpy(path, "");

	char *invite[] = {
		"                                                             ",
		"  Путь    :                                                  ",
		"                                                             "
	};

	drawDialog("", x1, y1, x2, y2);
	for (int i = 0; i < 3; i++) { gotoxy(x1 + 1, y1 + i + 1); cout << invite[i]; }
	gotoxy(x1 + 13, y1 + 2);
	cin >> path;
	return path;
}

// экспорт таблицы в текстовый файл + выходная таблица
int exportList(ln *head, char *path){
	if (!head) return 0;
	FILE *fout, *fout2;
	if (!strcmp(path, "")) strcpy(path, "outfile.txt");
	fout = fopen(path, "w");
	char *path2 = { path };
	strcat(path2, "_calculated.txt");
	fout2 = fopen(path2, "w");
	if (!fout || !fout2) return -1;
	ln *pointer = head;

	rewind(fout);

	// экспорт в текстовый файл входной таблицы
	while (pointer) {
		fprintf(fout, "%5s %5s %5d %5d %5d %5d %5d %5d\n",
				pointer->in.group_code, pointer->in.discp_code,
				pointer->in.marks.excl, pointer->in.marks.good,
				pointer->in.marks.stfy, pointer->in.marks.bad,
				pointer->in.gaps.lects, pointer->in.gaps.pract);
		pointer = pointer->next;
	}

	// экспорт выходной таблицы
	pointer = head->next;
	outs od;
	od.mean_mark =
				  (head->in.marks.excl <= 0 ? 0 : head->in.marks.excl * 5)
				+ (head->in.marks.good <= 0 ? 0 : head->in.marks.good * 4)
				+ (head->in.marks.stfy <= 0 ? 0 : head->in.marks.stfy * 3)
				+ (head->in.marks.bad  <= 0 ? 0 : head->in.marks.bad  * 2);
	od.marks.excl = head->in.marks.excl;
	od.marks.good = head->in.marks.good;
	od.marks.stfy = head->in.marks.stfy;
	od.marks.bad = head->in.marks.bad;
	strcpy(od.group_code, head->in.group_code);
	long sum = head->in.marks.excl + head->in.marks.good + head->in.marks.stfy + head->in.marks.bad;
    char *title[] = {
        "!==========================================================!",
        "! °шЇЁ      ! CЁхфэшщ !          KюышўхёЄтю юЎхэюъ         !",
        "! уЁєяя     !   сры   !====================================!",
        "!           !         !  OЄышў !  XюЁю°ю !  Yфют  !  Hхєф  !",
        "!===========!=========!========!=========!========!========!"
    };
    for (int i = 0; i < 5; i++) {
        fprintf(fout2, title[i]);
        fprintf(fout2, "\n");
    }

	if (!head->next) {
		fprintf(fout2, "!%6s     !%6.1f   !%6d  !%6d  !%6d   !%6d  !\n", od.group_code,
					od.mean_mark/(sum != 0 ? sum : 1), od.marks.excl, od.marks.good, od.marks.stfy, od.marks.bad);
	} else {
		do {
			if (strcmp(pointer->in.group_code, pointer->prev->in.group_code)) {
				od.mean_mark = od.mean_mark / (sum != 0 ? sum : 1);

				fprintf(fout2, "!  %6s   !%6.1f   !%6d  !%6d  !%6d   !%6d  !\n", od.group_code,
						od.mean_mark, od.marks.excl, od.marks.good, od.marks.stfy, od.marks.bad);

				od.mean_mark = 0.0;
				od.marks.excl = 0;
                od.marks.good = 0;
                od.marks.stfy = 0;
                od.marks.bad = 0;
				strcpy(od.group_code, pointer->in.group_code);
				sum = 0;
			}
			od.mean_mark = od.mean_mark
				+ (pointer->in.marks.excl <= 0 ? 0 : pointer->in.marks.excl * 5)
				+ (pointer->in.marks.good <= 0 ? 0 : pointer->in.marks.good * 4)
				+ (pointer->in.marks.stfy <= 0 ? 0 : pointer->in.marks.stfy * 3)
				+ (pointer->in.marks.bad  <= 0 ? 0 : pointer->in.marks.bad  * 2);

				od.marks.excl += pointer->in.marks.excl;
                od.marks.good += pointer->in.marks.good;
                od.marks.stfy += pointer->in.marks.stfy;
                od.marks.bad += pointer->in.marks.bad;
			sum += pointer->in.marks.excl + pointer->in.marks.good + pointer->in.marks.stfy + pointer->in.marks.bad;
			pointer = pointer->next;
		} while (pointer);

		fprintf(fout2, "!  %6s   !%6.1f   !%6d  !%6d  !%6d   !%6d  !\n", od.group_code,
					od.mean_mark/(sum != 0 ? sum : 1), od.marks.excl, od.marks.good, od.marks.stfy, od.marks.bad);
	}

	fprintf(fout2, "!==========================================================!");
	fclose(fout);
	fclose(fout2);

	return 1;
}

// чтение из бинарного файла
ln *readBinary(ln *&head, ln *&tail, char *path, long &current, long &lines_count){
	FILE *fin;
	fin = fopen(path, "rb");
	if (!fin) {
		drawDialog("Ошибка", 28, 10, 53, 14);
		gotoxy(33, 12);
		cout << "Файл не обнаружен"; gotoxy(1, 1);
		cin.get();
		return NULL;
	}

	ln data, *temp;
	int l_c = 0;

	rewind(fin);

	while (1) {
		fread(&data, 1, sizeof(data), fin);
		if (feof(fin)) break;
		if (!head) {
			head = tail = lnAddInHead(data, lines_count);
			current = 1;
		} else tail = lnAddInTail(tail, data, lines_count);
		++l_c;
	}

	fclose(fin);
	lines_count = l_c;

	head->prev = tail;
	temp = head;

	return temp;
}

// запись в бинарный файл
int writeBinary(ln *head, char *path){
	if (!head) return 0;
	FILE *fout = fopen(path, "wb");

	ln *pointer = head, data;

	while (pointer){
		data = *pointer;
		fwrite(&data, 1, sizeof(data), fout);
		pointer = pointer->next;
	}

	return 1;
}

// импорт базы из текстового файла
ln *importList(ln *head, ln *tail, char *path, long &current, long &lines_count) {
	FILE *fin;
	fin = fopen(path, "r+t");
	if (!fin) {
		drawDialog("Ошибка", 28, 10, 53, 14);
		gotoxy(33, 12);
		cout << "Файл не обнаружен"; gotoxy(1, 1);
		cin.get();
		return NULL;
	}
	ln data, *temp;
	int l_c = 0;

	rewind(fin);

	while (1) {
		fscanf(fin, "%s %s %d %d %d %d %d %d",
				data.in.group_code, data.in.discp_code,
				&data.in.marks.excl, &data.in.marks.good,
				&data.in.marks.stfy, &data.in.marks.bad,
				&data.in.gaps.lects, &data.in.gaps.pract);
		if (feof(fin)) break;
		if (!head) {
			head = tail = lnAddInHead(data, lines_count);
			current = 1;
		} else tail = lnAddInTail(tail, data, lines_count);
		++l_c;
	}

	fclose(fin);
	lines_count = l_c;

	head->prev = tail;
	temp = head;

	return temp;
}

// очистка существующего списка. применяется во избежания утечек памяти
int clearList(ln *head){
	if (!head) return -1;
	ln *pointer, *temp = head;

	while (temp) {
		pointer = temp;
		temp = temp->next;
		delete pointer;
	}

	return 0;
}

// сортировка методом пузырька
int BubbleSort(ln *head){
	ln *temp = head, *temp2 = head;
	ins buffer;

	while (temp->next) {
		temp2 = head;
		while (temp2->next) {
			if (strcmp(temp2->in.group_code, temp2->next->in.group_code) > 0) {
				buffer = temp2->in;
				temp2->in = temp2->next->in;
				temp2->next->in = buffer;
			}
			temp2 = temp2 -> next;
		}
		temp = temp->next;
	}

	return 0;
}

// перерисовка вертикалей (вспомогательная, для правильного отображения интерфейса)
void redrawVerticals(long lines_count){
	if (lines_count <= 22) for (int i = lines_count + 5; i < 24; i++) {
			gotoxy(2,i);
			cout<<setw(12)<<" "<<(char)186 <<setw(12)<<" "<<(char)186 <<setw(6)<<" "<<(char)186
			<<setw(6)<<" "<<(char)186<<setw(6)<<" "<<(char)186<<setw(6)<<" "<<(char)186<<setw(12)<<" "<<(char)186
			<<setw(11)<<" ";
		}
}



