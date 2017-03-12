#include <Windows.h>
#include <conio.h>
#include <string.h>
#include <time.h>
#include <iostream>
#include <cstdlib>
#include <clocale>
#include <stdio.h>
#include <iomanip>
#include <math.h>
#include <fstream>
#include <ctime>
#include <ctype.h>
#include <stdlib.h>
#include <tttt.h>

using namespace std;

// входная структура
struct data {
	char group_code[7];
	char discp_code[7];
	struct mark {
		int excl;
		int good;
		int stfy;
		int bad;
	} marks;
	struct gap {
		int lects;
		int pract;
	} gaps;
};

// выходная структура
struct output {
	char discp_code[7];
	float mean_mark;
	struct mark {
		int excl;
		int good;
		int stfy;
		int bad;
	} marks;
};

// структура записи
struct Elem {
	data elementData;
	Elem *next;
} *Head, *Last;

char  v = (char)179;
char lta = (char)218;
char rt = (char)180;
char bt = (char)193;
char tt = (char)194;
char lt = (char)195;
char rba = (char)217;
char h = (char)196;
char lba = (char)192;
char rta = (char)191;
char t = (char)197;

const char S[] = "base.txt";
const int countViewLines = 19;
const int centerX = 39;
const int centerY = 12;

Elem* editElem(Elem* _element);
void insertElem(Elem* _element);
void deleteElem(Elem* _element);
void searchElem();//
void saveAndExit();//
void sortElem();
Elem* previewElem();

int createList(char s[20]);
int create(char s[20]);
int binread(char s[20]);

int writeList(char s[20]);
int writet(char s[20]);
int binwrite(char s[20]);

int menu();
void setborder(int x1, int y1, int x2, int y2);

void titleTable();
void bottomTable();
void view();

void titleOutTable();
void bottomOutTable();
void outTable();
int printElem(Elem *ins);
Elem* displayElem(Elem* _element);

void getMessage(char* s) {
	int x1 = centerX - 8;
	int y1 = centerY - 2;
	int x2 = centerX + 8;
	int y2 = centerY + 2;
	clrscr();
	setborder(x1, y1, x2, y2);
	gotoxy(x1 + 1, centerY);
	cout << s;
	getch();
}


int binread(char s[20]) {
	data z;
	Elem *temp;
	char *s1 = "*";
	int ret = 0;
	ifstream fin(s, ios::binary);
	if (!fin) {
		if (!fin.eof()) {
			fin.read(reinterpret_cast<char *>(&z), sizeof(data));
			temp = new Elem;
			temp->elementData = z;
			temp->next = NULL;
			Head = temp;
		}
		while (!fin.eof()) {
			Last = temp;
			fin.read(reinterpret_cast<char *>(&z), sizeof(data));
			temp = new Elem;
			temp->elementData = z;
			temp->next = NULL;
			Last->next = temp;
		}
		s1 = "Файл прочитан";
		ret = 1;
	}
	else {
		s1 = "Файл не создан";
	}
	fin.close();
	temp = Head;
	while (temp->next->next != NULL) {
		temp = temp->next;
	}
	getMessage(s1);
	return ret;
}


int binwrite(char s[20]) {
	data z;
	char *s1 = "*";
	int ret = 0;
	Elem *temp = new Elem;
	temp = Head;
	FILE* f = fopen(s, "wb");
	if (f) {
		while (temp != NULL) {
			z = temp->elementData;
			fwrite((data*)&z, sizeof(z), 1, f);
			temp = temp->next;
		}
		s1 = "Файл записан";
		ret = 1;
	}
	else {
		s1 = "Файл не создан";
	}
	fclose(f);
	getMessage(s1);
	return ret;
}


int createList(char s[20]) {
	data z; int i = 0;
	char *s1 = "*";
	int ret = 0;
	Elem *temp;
	ifstream fin(s, ios::in);
	if (fin) {
		if (!fin.eof()) {
			fin >> z.group_code;
			fin >> z.discp_code;
			fin >> z.marks.excl;
			fin >> z.marks.good;
			fin >> z.marks.stfy;
			fin >> z.marks.bad;
			fin >> z.gaps.lects;
			fin >> z.gaps.pract;
			temp = new Elem;
			temp->elementData = z;
			temp->next = NULL;
			Head = temp;
		}
		while (!fin.eof()) {
			Last = temp;
			fin >> z.group_code;
			fin >> z.discp_code;
			fin >> z.marks.excl;
			fin >> z.marks.good;
			fin >> z.marks.stfy;
			fin >> z.marks.bad;
			fin >> z.gaps.lects;
			fin >> z.gaps.pract;
			temp = new Elem;
			temp->elementData = z;
			temp->next = NULL;
			Last->next = temp;
			i++;
		}
		s1 = "Файл прочитан";
		ret = 1;
	}
	else {
		s1 = "Файл не создан";
	}
	fin.close();
	temp = Head;
	while (temp->next->next != NULL) {
		temp = temp->next;
	}
	temp->next = NULL;
	getMessage(s1);
	sortElem();
	return ret;
}


int writeList(char s[20]) {
	data z;
	char *s1 = "*";
	int ret = 0;
	Elem *temp = new Elem;
	temp = Head;
	ofstream fout(s, ios::out);
	if (fout) {
		while (temp != NULL) {
			z = temp->elementData;
			fout << z.group_code << endl;
			fout << z.discp_code << endl;
			fout << z.marks.excl << endl;
			fout << z.marks.good << endl;
			fout << z.marks.stfy << endl;
			fout << z.marks.bad << endl;
			fout << z.gaps.lects << endl;
			fout << z.gaps.pract << endl;
			fout << endl;
			temp = temp->next;
		}
		s1 = "Файл записан";
		ret = 1;
	}
	else {
		s1 = "Файл не создан";
	}
	fout.close();
	getMessage(s1);
	return ret;
}


int create_spisok() {
	setcolor(15, 0);
	clrscr();
	int ch, index = 0;
	string items[] = {
		" Текстовый файл ",
		" Бинарный файл  "
	};
	int countItems = 2;
	int widthItem = 16;
	int heightItem = 3;
	int width = widthItem + 4;
	int height = countItems * heightItem + 2;
	char s[20], s1[20] = "*";
	while (1) {
		clrscr();
		int x1 = (centerX - width / 2) % 2 == 0 ? centerX - width / 2 : centerX - width / 2 + 1;
		int y1 = (centerY - height / 2) % 2 == 0 ? centerY - height / 2 : centerY - height / 2 + 1;
		int x2 = centerX + width / 2;
		int y2 = centerY + height / 2;
		setborder(x1, y1, x2, y2);
		int itemX = centerX - widthItem / 2, itemY = centerY - 3;
		switch (index) {
		case 0:
			itemY = centerY - 3;
			break;
		case 1:
			itemY = centerY;
			break;
		}
		setborder(itemX, itemY, itemX + widthItem, itemY + heightItem);
		for (int i = 0, j = centerY - 2; i < countItems; i++, j += 3) {
			gotoxy(x1 + 2, j);
			cout << items[i];
		}
		switch (ch = getch()) {
		case 72:
			index--;
			if (index < 0) index = 0;
			break;
		case 80:
			index++;
			if (index >= countItems) index = countItems - 1;
			break;
		case 13:
			clrscr();
			x1 = centerX - 14;
			y1 = centerY - 2;
			x2 = centerX + 14;
			y2 = centerY + 2;
			setborder(x1, y1, x2, y2);
			gotoxy(x1 + 1, centerY);
			cout << "Путь : ";
			cin >> s;
			switch (index) {
			case 0:
				if (strcmp(s, s1) == 0) strcpy(s, S);
				if (createList(s) == 1) return 1; else return 0;
				break;
			case 1:
				if (strcmp(s, s1) == 0) strcpy(s, S);
				if (binread(s) == 1) return 1; else return 0;
				break;
			}
			break;
		case 27:
			return 0;
			break;
		default:
			continue;
			break;
		}
	}
}


int write_spisok() {
	setcolor(15, 0);
	clrscr();
	int ch, index = 0;
	string items[] = {
		" Текстовый файл ",
		" Бинарный файл  "
	};
	int countItems = 2;
	int widthItem = 16;
	int heightItem = 3;
	int width = widthItem + 4;
	int height = countItems * heightItem + 2;
	char s[20], s1[20] = "*";
	while (1) {
		clrscr();
		int x1 = (centerX - width / 2) % 2 == 0 ? centerX - width / 2 : centerX - width / 2 + 1;
		int y1 = (centerY - height / 2) % 2 == 0 ? centerY - height / 2 : centerY - height / 2 + 1;
		int x2 = centerX + width / 2;
		int y2 = centerY + height / 2;
		setborder(x1, y1, x2, y2);
		int itemX = centerX - widthItem / 2, itemY = centerY - 3;
		switch (index) {
		case 0:
			itemY = centerY - 3;
			break;
		case 1:
			itemY = centerY;
			break;
		}
		setborder(itemX, itemY, itemX + widthItem, itemY + heightItem);
		for (int i = 0, j = centerY - 2; i < countItems; i++, j += 3) {
			gotoxy(x1 + 2, j);
			cout << items[i];
		}
		switch (ch = getch()) {
		case 72:
			index--;
			if (index < 0) index = 0;
			break;
		case 80:
			index++;
			if (index >= countItems) index = countItems - 1;
			break;
		case 13:
			clrscr();
			x1 = centerX - 14;
			y1 = centerY - 2;
			x2 = centerX + 14;
			y2 = centerY + 2;
			setborder(x1, y1, x2, y2);
			gotoxy(x1 + 1, centerY);
			cout << "Путь : ";
			cin >> s;
			switch (index) {
			case 0:
				if (strcmp(s, s1) == 0) strcpy(s, S);
				if (writeList(s) == 1) return 1; else return 0;
				break;
			case 1:
				if (strcmp(s, s1) == 0) strcpy(s, S);
				if (binwrite(s) == 1) return 1; else return 0;
				break;
			}
			break;
		case 27:
			return 0;
			break;
		default:
			continue;
			break;
		}
	}
}


int menu() {
	int ch, index = 0;
	string items[] = {
		"   Список   ",
		"    Поиск   ",
		" Статистика ",
		" Добавление ",
		"  Экспорт   ",
		"   Импорт   "
	};
	int countItems = sizeof(items) / sizeof(int);
	int widthItem = 14;
	int heightItem = 3;
	int width = widthItem + 5;
	int height = countItems *heightItem + 2;
	while (1) {
		clrscr();
		int x1 = (centerX - width / 2) % 2 == 0 ? centerX - width / 2 : centerX - width / 2 + 1;
		int y1 = (centerY - height / 2) % 2 == 0 ? centerY - height / 2 : centerY - height / 2 + 1;
		int x2 = centerX + width / 2;
		int y2 = centerY + height / 2;
		setborder(x1, y1, x2, y2);
		for (int i = 0, j = centerY - 8; i < countItems; i++, j += 3) {
			gotoxy(centerX - widthItem / 2 + 2, j);
			cout << items[i];
		}
		int itemX = centerX - widthItem / 2, itemY = centerY - 9;
		switch (index) {
		case 0:
			itemY = centerY - 9;
			break;
		case 1:
			itemY = centerY - 6;
			break;
		case 2:
			itemY = centerY - 3;
			break;
		case 3:
			itemY = centerY;
			break;
		case 4:
			itemY = centerY + 3;
			break;
		case 5:
			itemY = centerY + 6;
			break;
		}
		setborder(itemX, itemY, itemX + widthItem, itemY + heightItem);
		gotoxy(79, 24);
		switch (ch = getch()) {
		case 72:
			index--;
			if (index < 0) index = 0;
			break;
		case 80:
			index++;
			if (index >= countItems) index = countItems - 1;
			break;
		case 13:
			return index;
			break;
		case 27:
			saveAndExit();
			break;
		default:
			continue;
			break;
		}
	}
}


int printElem(Elem *ins) {
	if (!ins) return 0;
	else {
		cout << v << setw(12) << ins->elementData.group_code << v << setw(12) << ins->elementData.discp_code << v
			<< setw(6) << ins->elementData.marks.excl << v << setw(6) << ins->elementData.marks.good << v
			<< setw(6) << ins->elementData.marks.stfy << v << setw(6) << ins->elementData.marks.bad << v
			<< setw(12) << ins->elementData.gaps.lects << v << setw(11) << ins->elementData.gaps.pract << v;
		return 1;
	}
}


void setborder(int x1, int y1, int x2, int y2) {
	int i = x1; char items[6];

	enum border_type {
		LEFT_TOP, RIGHT_TOP, LEFT_BOTTOM, RIGHT_BOTTOM, HORIZONTAL, VERTICAL
	};
	items[LEFT_TOP] = lta;
	items[RIGHT_TOP] = rta;
	items[LEFT_BOTTOM] = lba;
	items[RIGHT_BOTTOM] = rba;
	items[HORIZONTAL] = h;
	items[VERTICAL] = v;

	gotoxy(x1, y1);
	cout << items[LEFT_TOP]; while (++i <= x2) cout << items[HORIZONTAL];
	cout << items[RIGHT_TOP];
	for (i = y1 + 1; i<y2; i++) {
		gotoxy(x1, i), cout << items[VERTICAL];
		gotoxy(x2 + 1, i), cout << items[VERTICAL];
	}; i = x1;
	gotoxy(x1, y2);
	cout << items[LEFT_BOTTOM]; while (++i <= x2) cout << items[HORIZONTAL];
	cout << items[RIGHT_BOTTOM];
}


void titleTable() {
	clrscr();
	char banner[5][80] = {
		{ lta, h, h, h, h, h, h, h, h, h, h, h, h, tt, h, h, h, h, h, h, h, h, h, h, h, h, tt,
		h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, tt,
		h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, rta },

		{ v, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', v, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', v,
		' ', ' ', ' ', ' ', 'К', 'о', 'л', 'и', 'ч', 'е', 'с', 'т', 'в', 'о', ' ', 'о', 'ц', 'е', 'н', 'о', 'к', ' ', ' ', ' ', ' ', ' ', ' ', v,
		' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'П', 'р', 'о', 'п', 'у', 'щ', 'е', 'н', 'о', ' ', ' ', ' ', ' ', ' ', ' ', ' ', v },

		{ v, ' ', ' ', ' ', ' ', 'Ш', 'и', 'ф', 'р', ' ', ' ', ' ', ' ', v, ' ', ' ', ' ', ' ', 'Ш', 'и', 'ф', 'р', ' ', ' ', ' ', ' ', lt,
		h, h, h, h, h, h, tt, h, h, h, h, h, h, tt, h, h, h, h, h, h, tt, h, h, h, h, h, h, t,
		h, h, h, h, h, h, h, h, h, h, h, h, tt, h, h, h, h, h, h, h, h, h, h, h, rt },

		{ v, ' ', ' ', ' ', 'г', 'р', 'у', 'п', 'п', 'ы', ' ', ' ', ' ', v, ' ', 'д', 'и', 'с', 'ц', 'и', 'п', 'л', 'и', 'н', 'ы', ' ', v,
		' ', 'О', 'т', 'л', '.', ' ', v, ' ', 'Х', 'о', 'р', '.', ' ', v, ' ', ' ', 'У', 'д', '.', ' ', v, ' ', 'Н', 'е', 'у', 'д', '.', v,
		' ', ' ', ' ', 'Л', 'е', 'к', 'ц', 'и', 'й', ' ', ' ', ' ', v, ' ', ' ', 'П', 'р', 'а', 'к', 'т', 'и', 'к', ' ', ' ', v },

		{ lt, h, h, h, h, h, h, h, h, h, h, h, h, t, h, h, h, h, h, h, h, h, h, h, h, h, t,
		h, h, h, h, h, h, t, h, h, h, h, h, h, t, h, h, h, h, h, h, t, h, h, h, h, h, h, t,
		h, h, h, h, h, h, h, h, h, h, h, h, t, h, h, h, h, h, h, h, h, h, h, h, rt }
	};
	for (int i = 0; i<5; i++) {
		for (int j = 0; j<80; j++) {
			gotoxy(j, i); cout << banner[i][j];
		}
	}
}


void bottomTable() {
	char banner[80] = { lba, h, h, h, h, h, h, h, h, h, h, h, h, bt, h, h, h, h, h, h, h, h, h, h, h, h, bt,
		h, h, h, h, h, h, bt, h, h, h, h, h, h, bt, h, h, h, h, h, h, bt, h, h, h, h, h, h, bt,
		h, h, h, h, h, h, h, h, h, h, h, h, bt, h, h, h, h, h, h, h, h, h, h, h, rba };
	for (int j = 0; j < 80; j++) {
		cout << banner[j];
	}
}


void titleOutTable() {
	clrscr();
	char banner[5][80] = {
		{ lta, h, h, h, h, h, h, h, h, h, h, h, h, tt, h, h, h, h, h, h, h, h, h, h, h, h, tt,
		h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, h, rta },

		{ v, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', v, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', v,
		' ', ' ', ' ', ' ', 'К', 'о', 'л', 'и', 'ч', 'е', 'с', 'т', 'в', 'о', ' ', 'о', 'ц', 'е', 'н', 'о', 'к', ',', ' ', '%', ' ', ' ', ' ', v },

		{ v, ' ', ' ', ' ', ' ', 'Ш', 'и', 'ф', 'р', ' ', ' ', ' ', ' ', v, ' ', ' ', ' ', 'С', 'р', 'е', 'д', 'н', 'и', 'й', ' ', ' ', lt,
		h, h, h, h, h, h, tt, h, h, h, h, h, h, tt, h, h, h, h, h, h, tt, h, h, h, h, h, h, rt },

		{ v, ' ', 'д', 'и', 'с', 'ц', 'и', 'п', 'л', 'и', 'н', 'ы', ' ', v, ' ', ' ', ' ', ' ', 'б', 'а', 'л', 'л', ' ', ' ', ' ', ' ', v,
		' ', 'О', 'т', 'л', '.', ' ', v, ' ', 'Х', 'о', 'р', '.', ' ', v, ' ', ' ', 'У', 'д', '.', ' ', v, ' ', 'Н', 'е', 'у', 'д', '.', v },

		{ lt, h, h, h, h, h, h, h, h, h, h, h, h, t, h, h, h, h, h, h, h, h, h, h, h, h, t,
		h, h, h, h, h, h, t, h, h, h, h, h, h, t, h, h, h, h, h, h, t, h, h, h, h, h, h, rt }
	};
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 80; j++) {
			gotoxy(j, i); cout << banner[i][j];
		}
	}
}


void bottomOutTable() {
	char banner[80] = { lba, h, h, h, h, h, h, h, h, h, h, h, h, bt, h, h, h, h, h, h, h, h, h, h, h, h, bt,
		h, h, h, h, h, h, bt, h, h, h, h, h, h, bt, h, h, h, h, h, h, bt, h, h, h, h, h, h, rba };
	for (int j = 0; j < 80; j++) {
		cout << banner[j];
	}
}


int listLength() {
	Elem *temp = Head;
	int countListElem = 0;
	while (temp != NULL) {
		countListElem++;
		temp = temp->next;
	}
	return countListElem;
}


void view() {
	clrscr();
	titleTable();
	bottomTable();
	int index = 0;
	int page = 0;
	int ch;
	Elem *temp = Head;
	Elem *selectElem = Head;
	while (1) {
		for (int j = 0; j < page; j++) {
			for (int k = 0; k < countViewLines; k++) {
				if (temp) temp = temp->next; else break;
			}
		}
		Elem *viewElem = temp;
		gotoxy(0, 5);
		for (int k = 0; k < countViewLines; k++) {
			for(int j = 0; j < 80; j++) {
				cout<<" ";
			}
		}
		gotoxy(0, 5);
		for (int k = 0; k < countViewLines; k++) {
			if (viewElem != NULL) {
				if (k == index) {
					setcolor(2, 0);
					selectElem = viewElem;
				}
				else {
					setcolor(15, 0);
				}
				printElem(viewElem);
				viewElem = viewElem->next;
			}
			else {
				break;
			}
		}
		setcolor(15, 0);
		bottomTable();
		switch (ch = getch()) {
		case 72:
			index--;
			if (index < 0) index = 0;
			break;
		case 80:
			index++;
			if (index >= min(countViewLines, listLength())) index = min(countViewLines, listLength()) - 1;
			break;
		case 13:
			editElem(selectElem);
			getMessage("qqq");
			break;
		case 27:
			setcolor(15, 0);
			return;
			break;
		default:
			continue;
			break;
		}
	}
}


void saveAndExit() {
	binwrite("table.bat");
	exit(0);
}


void insertElem() {
	Last->next = displayElem(new Elem);
	Last->next->next = NULL;
	sortElem();
}


void deleteElem(Elem* _element) {
	Elem *temp = Head;
	while (temp->next == _element) {
		temp = temp->next;
	}
	temp->next = temp->next->next;
	delete _element;
}


void searchElem() {
	return;
}


void outTable() {
	if (!Head) return;
	FILE* fout = fopen("outfile.txt", "w");
	if (!fout) return;
	Elem *pointer = Head;
	Elem *temp = NULL;
	output out;
	long sum;// = Head->elementData.marks.excl + Head->elementData.marks.good + Head->elementData.marks.stfy + Head->elementData.marks.bad;
	titleOutTable();
	while (pointer) {
		if (strcmp(pointer->elementData.discp_code, temp->elementData.discp_code) && temp) {
			out.mean_mark = out.mean_mark / (sum != 0 ? sum : 1);

			fprintf(fout, "!%6s     !%6.1f   !%6d  !%6d  !%6d   !%6d  !\n", out.discp_code,
				out.mean_mark / (sum != 0 ? sum : 1),
				out.marks.excl / (sum != 0 ? sum : 1),
				out.marks.good / (sum != 0 ? sum : 1),
				out.marks.stfy / (sum != 0 ? sum : 1),
				out.marks.bad / (sum != 0 ? sum : 1));

			out.mean_mark = 0.0;
			out.marks.excl = 0;
			out.marks.good = 0;
			out.marks.stfy = 0;
			out.marks.bad = 0;
			strcpy(out.discp_code, pointer->elementData.discp_code);
			sum = 0;
		}
		out.mean_mark = out.mean_mark
			+ (pointer->elementData.marks.excl <= 0 ? 0 : pointer->elementData.marks.excl * 5)
			+ (pointer->elementData.marks.good <= 0 ? 0 : pointer->elementData.marks.good * 4)
			+ (pointer->elementData.marks.stfy <= 0 ? 0 : pointer->elementData.marks.stfy * 3)
			+ (pointer->elementData.marks.bad <= 0 ? 0 : pointer->elementData.marks.bad * 2);

		out.marks.excl += pointer->elementData.marks.excl;
		out.marks.good += pointer->elementData.marks.good;
		out.marks.stfy += pointer->elementData.marks.stfy;
		out.marks.bad += pointer->elementData.marks.bad;
		sum += pointer->elementData.marks.excl + pointer->elementData.marks.good + pointer->elementData.marks.stfy + pointer->elementData.marks.bad;
		temp = pointer;
		pointer = pointer->next;
	}
	bottomOutTable();
	fclose(fout);
}


Elem* editElem(Elem* _element) {
	return displayElem(_element);
}


void sortElem() {
	Elem *temp = Head;
	Elem *temp2;
	data dataElem;
	while (temp != NULL) {// обычная пузырьковая сортировка
		temp2 = temp->next;
		while (temp2 != NULL) {
			if (strcmp(temp->elementData.group_code, temp2->elementData.group_code) > 0) {
				dataElem = temp2->elementData;
				temp2->elementData = temp->elementData;
				temp->elementData = dataElem;
			}
			temp2 = temp2->next;
		}
		temp = temp->next;
	}
}


Elem* displayElem(Elem* _element) {
	CONSOLE_SCREEN_BUFFER_INFO cinf;
	GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cinf);
	
	int ch, index = 0;
	string items[] = {
		"group :       ",
		"discp :       ",
		" excl :       ",
		" good :       ",
		" stfy :       ",
		"  bad :       ",
		"lects :       ",
		"pract :       "
	};
	setcolor(15, 0);
	int countItems = 8;
	int widthItem = 17;
	int heightItem = 3;
	int width = 17;
	int height = 17;
	char s[20], s1[20] = "*";
	while (1) {
		int x1 = (centerX - width / 2) % 2 == 0 ? centerX - width / 2 : centerX - width / 2 + 1;
		int y1 = (centerY - height / 2) % 2 == 0 ? centerY - height / 2 : centerY - height / 2 + 1;
		int x2 = centerX + width / 2;
		int y2 = centerY + height / 2;
		setborder(x1, y1, x2, y2);
		int itemX = centerX - widthItem / 2, itemY = centerY - 3;
		switch (index) {
		case 0:
			itemY = centerY - 9;
			break;
		case 1:
			itemY = centerY - 7;
			break;
		case 2:
			itemY = centerY - 5;
			break;
		case 3:
			itemY = centerY - 3;
			break;
		case 4:
			itemY = centerY - 1;
			break;
		case 5:
			itemY = centerY + 1;
			break;
		case 6:
			itemY = centerY + 3;
			break;
		case 7:
			itemY = centerY + 5;
			break;
		}
		setborder(itemX, itemY, itemX + widthItem, itemY + heightItem);
		for (int i = 0, j = centerY - 8; i < countItems; i++, j += 2) {
			gotoxy(x1 + 2, j);
			cout << items[i];
		}
		if (!_element) {
			gotoxy(x1 + 8, centerY - 8);
			cout << _element->elementData.discp_code;
			gotoxy(x1 + 8, centerY - 6);
			cout << _element->elementData.discp_code;
			gotoxy(x1 + 8, centerY - 4);
			cout << _element->elementData.marks.excl;
			gotoxy(x1 + 8, centerY - 2);
			cout << _element->elementData.marks.good;
			gotoxy(x1 + 8, centerY);
			cout << _element->elementData.marks.stfy;
			gotoxy(x1 + 8, centerY + 2);
			cout << _element->elementData.marks.bad;
			gotoxy(x1 + 8, centerY + 4);
			cout << _element->elementData.gaps.lects;
			gotoxy(x1 + 8, centerY + 6);
			cout << _element->elementData.gaps.pract;
		}
		switch (ch = getch()) {
		case 72:
			index--;
			if (index < 0) index = 0;
			break;
		case 80:
			index++;
			if (index >= countItems) index = countItems - 1;
			break;
		case 13:
			;
			break;
		case 27:
			return _element;
			break;
		default:
			continue;
			break;
		}
	}
}


int main() {
    setcolor(15, 0);
	Last = NULL;
    Head = NULL;
    int kount;
    while(1) {
        kount = menu();
        switch (kount) {
            case 0: view();
                break;
            case 1: searchElem();
                break;
            case 2: outTable();
                break;
            case 3: insertElem();;
                break;
            case 4: write_spisok();
                break;
            case 5: create_spisok();
                break;
        }
    }
	return 0;
}
