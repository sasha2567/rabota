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

struct data{
       int tabelnuy_nomer;
       char FIO[22];
       int god_rogdenya;
       bool pol;
       char proffesia [10];
       int stag_raboty;
       int razrad;
       int nomer_ceha;
       int nomer_uchastka;
       double zarplata;
       };


struct Rabochiy{
       data d;
       Rabochiy *next;
       }*L,*T,*P,*p,*R;

char  c=(char)179;
char c1=(char)218;
char c2=(char)180;
char c3=(char)193;
char c4=(char)194;
char c5=(char)195;
char c6=(char)217;
char c7=(char)196;
char c8=(char)192;
char c9=(char)191;
char c10=(char)197;
int III=0,II2=1;
bool sortNum = true, sortFio = true, sortStag = true;

const char S[]="base.txt";

// заголовки основных функций
void view();
int create(char s[20]);
void table_niz();
void table();
void scroll(Rabochiy *T,int k,Rabochiy *ee);
int redakt(Rabochiy *W);
void add();
void udal(int x);
int writet(char s[20]);
int meny();
void poisk();
void table1();
void table1_niz();
void Table();
int strsravn(const char *s1,const char *s2);
int binread(char s[20]);
int binwrite(char s[20]);
int create_spisok();
int write_spisok();
void sortirovka();

// функция сравнения строк
int strsravn(const char *s1,const char *s2){
    int l1=strlen(s1);
    int l2=strlen(s2);
    int fl=0;
    for(int i=0; i<min(l1,l2); i++){
        if(s1[i]<s2[i]){
            fl=-1;
            break;
        }
        if(s1[i]>s2[i]){
            fl=1;
            break;
        }
    }
    return fl;
}

// чтение из бинарного файла
int binread(char s[20]){
    data z;
    char s1[20]="*";
    ifstream fin(s, ios::binary);
    if(!fin){cout<<"Файл не найден  "<<endl; getch(); return 0;}// если не удалось открыть файл
    if (!fin.eof()){
        fin.read(reinterpret_cast<char *>(&z),sizeof(data));
        p=new Rabochiy;
        p->d=z;
        p->next=NULL;
        L=p;
    }// считываем первую запись
	while (!fin.eof()){
        R=p;
        fin.read(reinterpret_cast<char *>(&z),sizeof(data));
        p=new Rabochiy;
        p->d=z;
        p->next=NULL;
        R->next=p;
	}// считываем остальные записи
    fin.close();
    T=L;
    while(T->next->next != NULL){
        T=T->next;
    }
    T->next=NULL;
    cout<<"Файл прочитан  "<<endl;
    getch();
    return 1;
}
// запись в бинарный файл
int binwrite(char s[20]){
    data z;
	char s1[20]="*";
    P=new Rabochiy;
	P=L;
	FILE* f=fopen(s,"wb");
	if(!f){cout<<"Файл не создан  "<<endl; getch(); return 0;}// если не удалось открыть файл
	while(P!=NULL){// пока не конец списка
		z=P->d;
		fwrite((data*)&z, sizeof(z), 1, f);// записать элемент в файл
		P=P->next;
	}
    fclose(f);
    cout<<"Файл записан  "<<endl;
    getch();
    return 1;
}

// функция построения списка из текстового файла (параметр - имя файла)
int create(char s[20]){
    data z; int i=0;
    char s1[20]="*";
    ifstream fin(s, ios::in);
	if(!fin){cout<<"Файл не найден"<<endl; getch(); return 0;}// если не удалось открыть файл
	if (!fin.eof()) {
		fin>>z.tabelnuy_nomer;
		fin>>z.FIO;
		fin>>z.god_rogdenya;
		fin>>z.pol;
		fin>>z.proffesia;
        fin>>z.stag_raboty;
        fin>>z.razrad;
        fin>>z.nomer_ceha;
        fin>>z.nomer_uchastka;
		fin>>z.zarplata;
		p=new Rabochiy;
		p->d=z;
        p->next=NULL;
	    L=p;
        //------------------------------
    }// считываем первую запись
    while (!fin.eof()){
          R=p;
          fin>>z.tabelnuy_nomer;
          fin>>z.FIO;
          fin>>z.god_rogdenya;
          fin>>z.pol;
          fin>>z.proffesia;
          fin>>z.stag_raboty;
          fin>>z.razrad;
          fin>>z.nomer_ceha;
          fin>>z.nomer_uchastka;
          fin>>z.zarplata;
          p=new Rabochiy;
          p->d=z;
          p->next=NULL;
          R->next=p;
          i++;
    }// считываем остальные записи
	fin.close();
	T=L;
	while(T->next->next != NULL){
        T=T->next;
	}
	T->next=NULL;
    cout<<"Файл прочитан"<<endl;
    getch();
    return 1;
}

//-----------------------------------------------------------------

// функция записи списка в текстовый файл
int writet(char s[20]){
	data z;
	char s1[20]="*";
    P=new Rabochiy;
	P=L;
	ofstream fout(s, ios::out);
	if(!fout){cout<<"Файл не создан"<<endl; getch(); return 0;}// если не удалось открыть файл
	while(P!=NULL){// пока не конец списка
		z=P->d;
        fout<<z.tabelnuy_nomer<<endl;
        fout<<z.FIO<<endl;
        fout<<z.god_rogdenya<<endl;
        fout<<z.pol<<endl;
        fout<<z.proffesia<<endl;
        fout<<z.stag_raboty<<endl;
        fout<<z.razrad<<endl;
        fout<<z.nomer_ceha<<endl;
        fout<<z.nomer_uchastka<<endl;
        fout<<z.zarplata<<endl;
        fout<<endl;// запись в файл данных о работнике
		P=P->next;
	}

    fout.close();
    cout<<"Файл записан"<<endl;
    getch();
    return 1;
}

//---------------------------------------------------------

// функция выбора вида файла для чтения данных и построения списка
int create_spisok(){
    setcolor(15,0);
    system("cls");
    int ch,i=1;
    char s[20],s1[20]="*";
    cout<<"Выберете тип файла"<<endl;
    setcolor(0,15);
    cout<<"Текстовый файл"<<endl;
    setcolor(15,0);
    cout<<"Бинарный файл"<<endl;
    while(1){

        ch=getch();
        if(ch == 72)
        {
            i=1;
            gotoxy(0,1);
            setcolor(0,15);
            cout<<"Текстовый файл "<<endl;
            setcolor(15,0);
            cout<<"Бинарный файл "<<endl;
            cout<<"                  "<<endl;
        }
        if(ch == 80)
        {
            i=2;
            gotoxy(0,1);
            setcolor(15,0);
            cout<<"Текстовый файл "<<endl;
            setcolor(0,15);
            cout<<"Бинарный файл "<<endl;
            setcolor(15,0);
            cout<<"                  "<<endl;
        }
        if(ch == 27){
            return 0;
        }
        if(ch == 13){
            if(i == 1)
            {
                system("cls");
                setcolor(15,0);
                cout<<"Введите название файла"<<endl;
                cout<<endl<<"                        "<<endl;
                gotoxy(0,1);
                cin>>s;
                if(strsravn(s,s1)==0)strcpy(s,S);
                if(create(s)==1)
                return 1;
            }
            if(i == 2)
            {
                clrscr();
                setcolor(15,0);
                cout<<"Введите название файла"<<endl;
                cout<<endl<<"                       "<<endl;
                gotoxy(0,1);
                cin>>s;
                if(strsravn(s,s1)==0)strcpy(s,S);
                if(binread(s)==1)
                return 1;
            }
            return 0;
        }
    }
}

//-----------------------------------------------------------

// функция выбора вида файла для записи списка
int write_spisok(){
    setcolor(15,0);
    system("cls");
    if(L==NULL){
            gotoxy(34,11);
            cout<<"Список пуст"<<endl;
            getch();
            return 0;
        }
    int ch,i=1;
    char s[20],s1[20]="*";
    cout<<"Выберете тип файла"<<endl;
    setcolor(0,15);
    cout<<"Текстовый файл"<<endl;
    setcolor(15,0);
    cout<<"Бинарный файл"<<endl;
    while(1){

        ch=getch();
        if(ch == 72)
        {
            i=1;
            gotoxy(0,1);
            setcolor(0,15);
            cout<<"Текстовый файл  "<<endl;
            setcolor(15,0);
            cout<<"Бинарный файл  "<<endl;
            setcolor(15,0);
            cout<<"                  "<<endl;
        }
        if(ch == 80)
        {
            i=2;
            gotoxy(0,1);
            setcolor(15,0);
            cout<<"Текстовый файл  "<<endl;
            setcolor(0,15);
            cout<<"Бинарный файл  "<<endl;
            setcolor(15,0);
            cout<<"                  "<<endl;
        }
        if(ch == 27){
            setcolor(15,0);
            return 0;
        }
        if(ch == 13){
            if(i == 1)
            {
                clrscr();
                setcolor(15,0);
                cout<<"Введите название файла"<<endl;
                cout<<endl<<"                       "<<endl;
                gotoxy(0,1);
                cin>>s;
                if(strsravn(s,s1)==0)strcpy(s,S);
                writet(s);
                return 0;
            }
            if(i == 2)
            {
                clrscr();
                setcolor(15,0);
                cout<<"Введите название файла"<<endl;
                cout<<endl<<"                       "<<endl;
                gotoxy(0,1);
                cin>>s;
                if(strsravn(s,s1)==0)strcpy(s,S);
                binwrite(s);
                return 0;
            }
        }
    }
}

//---------------------------------------
// вырисовка низа таблицы
void table_niz(bool flag = false){
    cout<<c8;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<22; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<6; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<11; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<7; ii++)cout<<c7;
    cout<<c6<<endl;
    if(!flag){
        cout<<"Навигация ";cout<<(char)24<<" и ";cout<<(char)25<<c<<"Редактирования - Enter"<<c<<"Поиск Ctrl+F"<<c<<"Сортировка Ctrl+S"<<c<<"Выход Esc";
    }
}

//---------------------------------------------------

// заголовок таблицы на вывод данных
void table(){
    cout<<c1;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<22; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<6; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<11; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<7; ii++)cout<<c7;
    cout<<c9<<endl;
    cout<<c<<" Та-"<<c<<"                      "<<c<<"Год ро"<<c<<"   "<<c<<"           "<<c<<"Стаж"<<c<<"Раз"<<c<<" №  "<<c<<" №  "<<c<<"  Зар- "<<c<<endl;
    cout<<c<<"бель"<<c<<"      Фамилия         "<<c<<"рожде-"<<c<<"Пол"<<c<<" Профессия "<<c<<"рабо"<<c<<" - "<<c<<"цеха"<<c<<"Уча-"<<c<<" плата "<<c<<endl;
    cout<<c<<"ный№"<<c<<"                      "<<c<<"  ния "<<c<<"   "<<c<<"           "<<c<<" ты "<<c<<"ряд"<<c<<"    "<<c<<"стка"<<c<<"       "<<c<<endl;
    cout<<c5;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<22; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<6; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<11; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<3; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<4; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<7; ii++)cout<<c7;
    cout<<c2<<endl;
}

//-------------------------------------------------------------

// функция, отвечающая за отрисовку скролла (выделение цветом текущей строки)
void scroll(Rabochiy *T,int k,Rabochiy *ee){
    int i=1;
    Rabochiy *t=new Rabochiy;
    t=T;
    while(t!=NULL && i<=17)// цикл на вывод данных
    {
        if(i==k){setcolor(0,15); ee->d=t->d;} else setcolor(15,0);// подсветка текущего выбранного пункта
        cout<<c<<setw(3)<<t->d.tabelnuy_nomer<<" "<<c<<setw(21)<<t->d.FIO;
        cout<<" "<<c<<setw(5)<<t->d.god_rogdenya<<" "<<c;
        if(t->d.pol==1)cout<<setw(2)<<"m"; else cout<<setw(2)<<"w";
        cout<<" "<<c<<setw(10)<<t->d.proffesia<<" "<<c<<setw(3)<<t->d.stag_raboty;
        cout<<" "<<c<<setw(2)<<t->d.razrad<<" "<<c<<setw(3)<<t->d.nomer_ceha;
        cout<<" "<<c<<setw(3)<<t->d.nomer_uchastka<<" "<<c<<setw(6)<<t->d.zarplata<<" "<<c<<endl;
        t=t->next; i++;
    }
}

//----------------------------------------------------------------

// функция редактирования записи
int redakt(Rabochiy *W){
    int ch,i=2,f1=0,f2=0,f3=0,f4=0,f5=0,f6=0,f7=0,f8=0,f9=0,f10=0;
    char t,s[20];
    int a[20];
    while(1){
        system("cls");
        puts("Введите данные");
        cout<<endl;
        cout<<"ФИО : "; cout<<W->d.FIO<<endl;
        cout<<"Год рождения : "; cout<<W->d.god_rogdenya<<endl;
        cout<<"Пол[0-м/1-ж] : "; cout<<W->d.pol<<endl;
        cout<<"Профессия : "; cout<<W->d.proffesia<<endl;
        cout<<"Стаж работы : "; cout<<W->d.stag_raboty<<endl;
        cout<<"Разряд[1/2/3] : "; cout<<W->d.razrad<<endl;
        cout<<"Номер цеха : "; cout<<W->d.nomer_ceha<<endl;
        cout<<"Номер участка : "; cout<<W->d.nomer_uchastka<<endl;
        cout<<"Зарплата : "; cout<<W->d.zarplata<<endl;
        cout<<"Для навигации "<<(char)24<<" и "<<(char)25<<" "<<c<<" Для выбора - Tab и ввода - Enter"<<endl;// вывод на печать заголовка для редактирования
        switch(i){
            case 2:// редактирование ФИО
                gotoxy(0,2);
                setcolor(0,15);
                cout<<"ФИО";
                setcolor(15,0);
                cout<<" : ";
                if(f2 == 0){
                    if( (ch=getch()) == 9){
                        cout<<"                          ";
                        gotoxy(6,2);
                        fflush(stdin);
                        cin.getline(W->d.FIO,22);
                        fflush(stdin);
                        cout<<endl;
                        f2=1;
                    }
                }
                else cout<<W->d.FIO<<endl;

                setcolor(15,0);
            break;
            case 3:// редактирование года рождения
                gotoxy(0,3);
                setcolor(0,15);
                cout<<"Год рождения";
                setcolor(15,0);
                cout<<" : ";
                if(f3 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
                        gotoxy(14,3);
                        fflush(stdin);
                        scanf("%4s",&s);
                        fflush(stdin);
                        W->d.god_rogdenya=atoi(s);
                        cout<<endl;
                        f3=1;
                    }
                }
                else cout<<W->d.god_rogdenya<<endl;

                setcolor(15,0);
            break;
            case 4:// редактирование пола работника
                gotoxy(0,4);
                setcolor(0,15);
                cout<<"Пол[0-м/1-ж]";
                setcolor(15,0);
                cout<<" : ";
                if(f4 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
			            gotoxy(15,4);
			            fflush(stdin);
			            scanf("%1s",&s);
			            fflush(stdin);
			            W->d.pol=atoi(s);
			            if(W->d.pol<1)W->d.pol=1;
			            if(W->d.pol>2)W->d.pol=2;
			            cout<<endl;
			            f4=1;
			        }
                }
                else cout<<W->d.pol<<endl;

                setcolor(15,0);
            break;
            case 5:// редактирование профессии
                gotoxy(0,5);
                setcolor(0,15);
                cout<<"Профессия";
                setcolor(15,0);
                cout<<" : ";
                if(f5 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
                        gotoxy(12,5);
                        fflush(stdin);
                        cin.getline(W->d.proffesia,10);
                        fflush(stdin);
                        cout<<endl;
                        f5=1;
                    }
                }
                else cout<<W->d.proffesia<<endl;

                setcolor(15,0);
            break;
            case 6:// редактирование стажа работы
                gotoxy(0,6);
                setcolor(0,15);
                cout<<"Стаж работы";
                setcolor(15,0);
                cout<<" : ";
                if(f6 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
		                gotoxy(14,6);
		                fflush(stdin);
		                scanf("%3s",&s);
		                fflush(stdin);
		                W->d.stag_raboty=atoi(s);
		                cout<<endl;
		                f6=1;
		            }
                }
                else cout<<W->d.stag_raboty<<endl;

                setcolor(15,0);
            break;
            case 7:// редактирование разряда
                gotoxy(0,7);
                setcolor(0,15);
                cout<<"Разряд[1/2/3]";
                setcolor(15,0);
                cout<<" : ";
                if(f7 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
	                    gotoxy(16,7);
	                    fflush(stdin);
	                    scanf("%3s",&s);
	                    fflush(stdin);
	                    W->d.razrad==atoi(s);
	                    if(W->d.razrad<1)W->d.razrad=1;
	                    if(W->d.razrad>3)W->d.razrad=3;
	                    cout<<endl;
	                    f7=1;
	                }
                   }
                else cout<<W->d.razrad<<endl;

                setcolor(15,0);
            break;
            case 8:// редактирование номера цеха
                gotoxy(0,8);
                setcolor(0,15);
                cout<<"Номер цеха";
                setcolor(15,0);
                cout<<" : ";
                if(f8 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
                        gotoxy(13,8);
                        fflush(stdin);
                        scanf("%3s",&s);
                        fflush(stdin);
                        W->d.nomer_ceha==atoi(s);
                        cout<<endl;
                        f8=1;
                    }
                }
                else cout<<W->d.nomer_ceha<<endl;

                setcolor(15,0);
            break;
            case 9:// редактирование номера участка
                gotoxy(0,9);
                setcolor(0,15);
                cout<<"Номер участка";
                setcolor(15,0);
                cout<<" : ";
                if(f9 == 0){
                	if( (ch=getch()) == 9){
                		cout<<"                          ";
                        gotoxy(16,9);
                        fflush(stdin);
                        scanf("%3s",&s);
                        fflush(stdin);
                        W->d.nomer_uchastka==atoi(s);
                        cout<<endl;
                        f9=1;
                    }
                }
                else cout<<W->d.nomer_uchastka<<endl;

                setcolor(15,0);
            break;
            case 10:// редактирование зарплаты
                gotoxy(0,10);
                setcolor(0,15);
                cout<<"Зарплата";
                setcolor(15,0);
                cout<<" : ";
                if(f10 == 0){
                    if( (ch=getch()) == 9){
                        cout<<"                          ";
                        gotoxy(11,10);
                        fflush(stdin);
                        scanf("%6s",&s);
                        fflush(stdin);
                        W->d.zarplata=atof(s);
                        if(W->d.zarplata<1)W->d.zarplata=1;
                        cout<<endl;
                        f10=1;
                    }
                }
                else cout<<W->d.zarplata<<endl;

                setcolor(15,0);
            break;

        }
        ch=getch();
        // переключение между пунктами меню
        if(ch == 72)
            if(i >= 3)
                i--;
        if(ch == 80)
            if(i <= 9)
                i++;
        if(ch == 27){
            system("cls");
            return 0;
        }
    }
}

//---------------------------------------------------------

// функция вывода данных с логикой вызова сортировки, поиска и редактирования
void view(){
    T=new Rabochiy;
	Rabochiy *ee=new Rabochiy,*w=new Rabochiy;
	Rabochiy *ww;
	int j;
	system("cls");
	if(L==NULL){// Если список ауст вывести информацию об этом
        gotoxy(34,11);
        cout<<"Список пуст"<<endl;
        getch();
        return;
	}
	T=L;
	j=1;
	int ch,i=1,k=0;
	int kount=1;
	T=L;
	ww=L;
    while(T->next!=NULL)// пока не конец списка
    {
        kount++;
        T=T->next;
    }
    if(kount<=17)// проверка на количество элементов в списке
        while(ww->next!=NULL)
            ww=ww->next;
    else
        while(ww->next->next->next->next->next->next->next->next->next->next->next->next->next->next->next->next->next!=NULL)
            ww=ww->next;
	T=L;
	system("cls");
	table();
    p=L;
    while(1){
        gotoxy(0,5);
        scroll(p,i,ee);//вывод элементов на экран
        if(kount<=17)
            gotoxy(0,kount+5);
        else
            gotoxy(0,17+5);
        setcolor(15,0);
        table_niz(false);
        ch=getch();
        if(ch == 72)
            if(i >= 2)
                i--;

        if(ch == 80)
            if(i<=16)
                i++;
        if(i >= kount && kount <= 17)i=kount;// изменение значений для прорисовки элементов

        if(i == 17 && kount>17 && p != ww ){ p=p->next; i--;}// изменение значений для прорисовки элементов

        if(i == 17 && kount>17 && p == ww ){// изменение значений для прорисовки элементов
            i=17;
            p=ww;
        }

        if(i ==  1 && p != L  ){// изменение значений для прорисовки элементов
            T=L;
            while(T->next!=p)
                T=T->next;
            p=T;
            i++;
        }

        if(ch == 27)
            return;
        if(ch == 6){// если был выбран пункт поиска
            poisk();
            system("cls");
            table();
        }
        if(ch == 13){// если был выбран пункт редактирования
            redakt(ee);
            T=L;
            while(T->d.tabelnuy_nomer < ee->d.tabelnuy_nomer)
                T=T->next;
            T->d=ee->d;
            system("cls");
            table();
        }
        if(ch == 19){// если был выбран пункт сортировки
            sortirovka();
            system("cls");
            table();
        }

    }
}

//------------------------------------------------------------------------------------

// добавление нового элемента (ввод данных с клавиатуры)
void add(){
    int ch,i=1,f1=0,f2=0,f3=0,f4=0,f5=0,f6=0,f7=0,f8=0,f9=0,f10=0,flag=0;
    char t,s[22];
	T=new Rabochiy;
	data z;
	z.tabelnuy_nomer=0;
	z.god_rogdenya=0;
	z.nomer_ceha=0;
	z.nomer_uchastka=0;
	z.pol=1;
	z.razrad=0;
	z.stag_raboty=0;
	z.zarplata=0;// создаем пустую структуру для ввода данных
	for(int j=0; j<22; j++)// очищаем ФИО
        z.FIO[j]=' ';
	for(int j=0; j<10; j++)// очищаем профессию
		z.proffesia[j]=' ';
	Rabochiy *f;
	while(1){
        system("cls");
        puts("Введите данные");
        //cout<<endl;
        cout<<"Табельный номер : ";if(f1 == 1) cout<<z.tabelnuy_nomer<<endl; else cout<<endl;
        cout<<"ФИО : ";if(f2 == 1) cout<<z.FIO<<endl; else cout<<endl;
        cout<<"Год рождения : ";if(f3 == 1) cout<<z.god_rogdenya<<endl; else cout<<endl;
        cout<<"Пол[0-м/1-ж] : ";if(f4 == 1) cout<<z.pol<<endl; else cout<<endl;
        cout<<"Профессия : ";if(f5 == 1) cout<<z.proffesia<<endl; else cout<<endl;
        cout<<"Стаж работы : ";if(f6 == 1) cout<<z.stag_raboty<<endl; else cout<<endl;
        cout<<"Разряд[1/2/3] : ";if(f7 == 1) cout<<z.razrad<<endl; else cout<<endl;
        cout<<"Номер цеха : ";if(f8 == 1) cout<<z.nomer_ceha<<endl; else cout<<endl;
        cout<<"Номер участка : ";if(f9 == 1) cout<<z.nomer_uchastka<<endl; else cout<<endl;
        cout<<"Зарплата : ";if(f10 == 1) cout<<z.zarplata<<endl; else cout<<endl;
        cout<<"Для навигации "<<(char)24<<" и "<<(char)25<<" "<<c<<" Для выбора - Tab и ввода - Enter"<<endl;// отрисовываем пункты для добавления записи
        switch(i){
            case 1:// ввод табельного номера
                gotoxy(0,1);
                setcolor(0,15);
                cout<<"Табельный номер : ";
                if(f1 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%3s",&s);z.tabelnuy_nomer=atoi(s); fflush(stdin); cout<<endl; f1=1;}}
                else cout<<z.tabelnuy_nomer<<endl;
                setcolor(15,0);
            break;
            case 2:// ввод ФИО рабочего
                gotoxy(0,2);
                setcolor(0,15);
                cout<<"ФИО : ";
                if(f2 == 0){if( (ch=getch()) == 9){fflush(stdin); cin.getline(s,22);strcpy(z.FIO,s); fflush(stdin); cout<<endl; f2=1;}}
                else cout<<z.FIO<<endl;
                setcolor(15,0);
            break;
            case 3:// ввод года рождения
                gotoxy(0,3);
                setcolor(0,15);
                cout<<"Год рождения : ";
                if(f3 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%4s",&s);z.god_rogdenya=atoi(s); fflush(stdin); cout<<endl; f3=1;}}
                else cout<<z.god_rogdenya<<endl;
                setcolor(15,0);
            break;
            case 4:// ввод пола рабочего
                gotoxy(0,4);
                setcolor(0,15);
                cout<<"Пол[0-м/1-ж] : ";
                if(f4 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%1s",&s);z.pol=atoi(s); fflush(stdin); cout<<endl; f4=1;}}
                else cout<<z.pol<<endl;
                setcolor(15,0);
            break;
            case 5:// ввод профессии
                gotoxy(0,5);
                setcolor(0,15);
                cout<<"Профессия : ";
                if(f5 == 0){if( (ch=getch()) == 9){fflush(stdin); cin.getline(s,10);strcpy(z.proffesia,s); fflush(stdin); cout<<endl; f5=1;}}
                else cout<<z.proffesia<<endl;
                setcolor(15,0);
            break;
            case 6:// ввод стажа работы
                gotoxy(0,6);
                setcolor(0,15);
                cout<<"Стаж работы : ";
                if(f6 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%3s",&s);z.stag_raboty=atoi(s);  fflush(stdin); cout<<endl; f6=1;}}
                else cout<<z.stag_raboty<<endl;
                setcolor(15,0);
            break;
            case 7:// ввод разряда
                gotoxy(0,7);
                setcolor(0,15);
                cout<<"Разряд[1/2/3] : ";
                if(f7 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%1s",&s);z.razrad=atoi(s);  fflush(stdin); cout<<endl; f7=1;}}
                else cout<<z.razrad<<endl;
                setcolor(15,0);
            break;
            case 8:// ввод номера цеха
                gotoxy(0,8);
                setcolor(0,15);
                cout<<"Номер цеха : ";
                if(f8 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%2s",&s);z.nomer_ceha=atoi(s);  fflush(stdin); cout<<endl; f8=1;}}
                else cout<<z.nomer_ceha<<endl;
                setcolor(15,0);
            break;
            case 9:// ввод номера участка
                gotoxy(0,9);
                setcolor(0,15);
                cout<<"Номер участка : ";
                if(f9 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%2s",&s);z.nomer_uchastka=atoi(s);  fflush(stdin); cout<<endl; f9=1;}}
                else cout<<z.nomer_uchastka<<endl;
                setcolor(15,0);
            break;
            case 10:// ввод зарплаты
                gotoxy(0,10);
                setcolor(0,15);
                cout<<"Зарплата : ";
                if(f10 == 0){if( (ch=getch()) == 9){fflush(stdin); scanf("%6s",&s);z.zarplata=atof(s);  fflush(stdin); cout<<endl; f10=1;}}
                else cout<<z.zarplata<<endl;
                setcolor(15,0);
            break;

        }
        ch=getch();
        if(ch == 72)// изменение выбранного поля для ввода данных - стрелка вверх
            if(i >= 2)
                i--;
        if(ch == 80)// изменение выбранного поля для ввода данных - стрелка вниз
            if(i <= 9)
                i++;
        if(ch == 27)break;
    }
    int fl=0,j=0;
    p=new Rabochiy;
    p->d=z;
    p->next=NULL;
	if(L==NULL){// если список пуст
        L=p;
        return;
    }
    f=new Rabochiy;
    T=L;
    if(L->d.tabelnuy_nomer==z.tabelnuy_nomer)fl=1;
    Rabochiy *ww;
    while (T->next != NULL) {// пока не конец списка
        if (T->next->d.tabelnuy_nomer==z.tabelnuy_nomer) {// если элемент с таким табельным номером существует
            fl=1;
            ww=T;
        }
        T=T->next;
    }
    if (T->d.tabelnuy_nomer==z.tabelnuy_nomer || fl == 1) {// Если элемент с таким табелтным номером существует
        gotoxy(0,12);
        cout<<"Такой элеметн существует.  Добавлять?"<<endl;
        gotoxy(0,13);setcolor(0,15);cout<<" Да(Замена старого) ";setcolor(15,0);cout<<" Нет(Выход) "<<endl;
        while(1){
            ch=getch();
            if(ch==75){gotoxy(0,13);setcolor(0,15);cout<<" Да(Замена старого) ";setcolor(15,0);cout<<" Нет(Выход) "<<endl;j=1;}
            if(ch==77){gotoxy(0,13);setcolor(15,0);cout<<" Да(Замена старого) ";setcolor(0,15);cout<<" Нет(Выход) "<<endl;j=2;}
            if(ch==13){
                if(j==1){
                    if(L->d.tabelnuy_nomer==z.tabelnuy_nomer){// если изменяемый элемент - голова списка
                        L->d=z;
                        flag=1;
                        break;
                    }
                    else{// если изменяемый элемент в середине списка
                        ww->d=z;
                        flag=1;
                        break;
                    }
                }
                else {
                    flag=1;
                }
                break;
            }
        }
        setcolor(15,0);
        if(flag==1)
            return;
    }

	f=L;
    T=NULL;
    while(f!=NULL){// пока не конец списка
        if (p->d.tabelnuy_nomer < f->d.tabelnuy_nomer)// изменяем указатель для нахождения места добавления элемента
            break;
        else T=f;
            f=f->next;
    }
    if (f==L){// если элемент нужно установить в начало списка
        p->next=L;
        L=p;
    } else {// если элемент нужно установить в середину списка
        p->next=f;
        T->next=p;
    }

    setcolor(15,0);
}

//-----------------------------------------------------------------------------------

// удаление элемента из списка
void udal(int x){
	T=L;
    R=L;
	int i=0;
    if(x==L->d.tabelnuy_nomer){// если удаляем первый элемент
        p=L;
        L=L->next;
        delete p;
        cout<<"Элемент успешно удален. Нажмите любую клавишу"<<endl;
        getch();
        return;
    }
    else{// если удаляем элемент по средине списка
        while(T->next->d.tabelnuy_nomer<x){// ищем нужный элемент
            T=T->next;
        }
        R=T;// устанавливаем указатель на предыдущий элемент
        T=T->next;

        if(T->d.tabelnuy_nomer==x && T->next==NULL){// если удаляемый элемент является последним
                p=T;
                R->next=NULL;
                p->next=NULL;
                delete p;
                cout<<"Элемент успешно удален. Нажмите любую клавишу"<<endl;
                getch();
                return;
        }
        else
            if (T->d.tabelnuy_nomer==x){
                    p=T;
                    R->next=R->next->next;// изменяем указатели
                    p->next=NULL;
                    delete p;
                    cout<<"Элемент успешно удален. Нажмите любую клавишу"<<endl;
                    getch();
                    return;
            }
            else {puts("Такого элемента нет. Нажмите любую клавишу"); getch(); return;}// если удаляемый элемент не найден
    }
}

//---------------------------------------------------------------

// сортировка данных по табельому номеру (используется параметр сортировки)
void sortByNum(){
    T=L;
    data dat;
    while (T!= NULL){// обычная пузырьковая сортировка
        R=T->next;
        while (R!= NULL){
            if (sortNum) {//параметр
                if ( T->d.tabelnuy_nomer > R->d.tabelnuy_nomer ) {// если нужно сортировать по возрастанию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            } else {
                if ( T->d.tabelnuy_nomer < R->d.tabelnuy_nomer ) {// если нужно сортировать по убыванию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            }
            R=R->next;
        }
        T=T->next;
    }
}

//---------------------------------------------------------------

// сортировка данных по ФИО (используется параметр сортировки)
void sortByFio(){
    T=L;
    data dat;
    while (T!= NULL){// обычная пузырьковая сортировка
        R=T->next;
        while (R!= NULL){
            if (sortFio) {//параметр
                if ( strsravn(T->d.FIO, R->d.FIO) == 1 ){// если нужно сортировать по возрастанию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            } else {
                if ( strsravn(T->d.FIO, R->d.FIO) == -1 ){// если нужно сортировать по убыванию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            }
            R=R->next;
        }
        T=T->next;
    }
}

//---------------------------------------------------------------

// сортировка данных по стажу работы (используется параметр сортировки)
void sortByStag(){
    T=L;
    data dat;
    while (T!= NULL){// обычная пузырьковая сортировка
        R=T->next;
        while (R!= NULL){
            if (sortStag) {//параметр
                if ( T->d.stag_raboty > R->d.stag_raboty ) {// если нужно сортировать по возрастанию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            } else {
                if ( T->d.stag_raboty < R->d.stag_raboty ) {// если нужно сортировать по убыванию
                    dat=R->d;
                    R->d=T->d;
                    T->d=dat;
                }
            }
            R=R->next;
        }
        T=T->next;
    }
}

//---------------------------------------------------------------

// функция выбора вида сортировки
void sortirovka(){
    T=new Rabochiy;

    int ch,i=1;
    char k1=(char)16,k2=(char)17;
    while (1) {
        system("cls");
        cout<<"Выберите поле для сортировки";
        switch(i){
            case 1:
                gotoxy(0,1);
                setcolor(0,15);
                cout<<"Табельный номер "<<((sortNum) ? "по убыванию" : "по возрастанию")<<endl;
                setcolor(15,0);
                cout<<"ФИО "<<((sortFio) ? "по убыванию" : "по возрастанию")<<endl;
                cout<<"Стаж "<<((sortStag) ? "по убыванию" : "по возрастанию")<<endl;
                break;
            case 2:
                gotoxy(0,1);
                setcolor(15,0);
                cout<<"Табельный номер "<<((sortNum) ? "по убыванию" : "по возрастанию")<<endl;
                setcolor(0,15);
                cout<<"ФИО "<<((sortFio) ? "по убыванию" : "по возрастанию")<<endl;
                setcolor(15,0);
                cout<<"Стаж "<<((sortStag) ? "по убыванию" : "по возрастанию")<<endl;
                break;
            case 3:
                gotoxy(0,1);
                setcolor(15,0);
                cout<<"Табельный номер "<<((sortNum) ? "по убыванию" : "по возрастанию")<<endl;
                cout<<"ФИО "<<((sortFio) ? "по убыванию" : "по возрастанию")<<endl;
                setcolor(0,15);
                cout<<"Стаж "<<((sortStag) ? "по убыванию" : "по возрастанию")<<endl;
                setcolor(15,0);
                break;
            default: break;

        }// отрисовка пунктов сортировки в зависимости от подсвеченного текущего пункта
        ch=getch();
        if (ch == 72) {// изменяем текущий выбираемый пункт стрелкой вверх
            i--;
            if(i < 1)
                i=1;
        }
        if (ch == 80) {// изменяем текущий выбираемый пункт стрелкой вниз
            i++;
            if(i>3)
                i=3;
        }
        if (ch == 27) {// выход если esc
            return;
        }
        if (ch == 13) {// если выбран пункт сортировки
            switch (i){
                case 1:
                    sortNum = !sortNum;// изменяем флаг сортировки на противоположный
                    sortByNum();// функция сортировки
                    break;
                case 2:
                    sortFio = !sortFio;// изменяем флаг сортировки на противоположный
                    sortByFio();// функция сортировки
                    break;
                case 3:
                    sortStag = !sortStag;// изменяем флаг сортировки на противоположный
                    sortByStag();// функция сортировки
                    break;
                default: break;
            }
            break;
        }
    }
}

//-------------------------------------------------------------

// отрисовка основного меню и возврат выбранного пункта
int meny(){
    int ch,i=1;
    char k1=(char)16,k2=(char)17;
    while(1){
        system("cls");
        cout<<"   Создание списка               "<<endl;
        cout<<"   Удаление элeмeнтa             "<<endl;
        cout<<"   Просмотр списка               "<<endl;
        cout<<"   Запись данных в файл          "<<endl;
        cout<<"   Добавление элемента в список  "<<endl;
        cout<<"   Поиск элемента в базе         "<<endl;
        cout<<"   Статистика по цехам           "<<endl;
        cout<<"   Bыxoд                         "<<endl;
        cout<<endl;
        cout<<"Навигация ";cout<<(char)24<<" и ";cout<<(char)25<<" "<<c<<" Выбор - Enter "<<c<<" Выход Esc";

        gotoxy(1,i-1);
        cout<<k1;
        gotoxy(32,i-1);
        cout<<k2;
        ch=getch();
        if(ch == 72)if(i>=2)i--;
        if(ch == 80)if(i<=7)i++;
        if(ch == 13)return i;
        if(ch == 27)exit(0);
    }
    return i;
}

//-------------------------------------------------------------

// функция поиска элемента по табельному номеру (уникальное поле - одна запись)
Rabochiy* poiskByNum(){
    T=NULL;
    Rabochiy *TT = NULL;
    int tn,flag;
    fflush(stdin);
    scanf("%3d",&tn);
    fflush(stdin);
    T=L;
    flag=0;
    while(T!=NULL){// цикл до конца списка
        if(T->d.tabelnuy_nomer==tn){// если совпадают табельные номера
            TT = new Rabochiy;
            TT->d = T->d;
            TT->next = NULL;
            break;
        }
        T=T->next;
    }
    return TT;
}

//-------------------------------------------------------------

// функция поиска элемента по ппрофессии - вернется список сотрудников с таким ФИО
Rabochiy* poiskByProf(){
    T=NULL;
    Rabochiy *TT = NULL;
    int flag;
    char s[22];
    fflush(stdin);
    cin.getline(s,22);
    fflush(stdin);
    T=L;
    flag=0;
    while(T!=NULL){// цикл до конца списка
        if(strsravn(T->d.proffesia,s) == 0){// если строки совпадают
            if(TT == NULL){// если до этого не было найденных записей
                TT = new Rabochiy;
                TT->d = T->d;
                TT->next = NULL;
            }else{
                TT->next = new Rabochiy;
                TT->next->d = T->d;
                TT->next->next = NULL;
            }
        }
        T=T->next;
    }
    return TT;
}

//-------------------------------------------------------------

// функция отрисовки  меню поиска
void poisk(){
    T=new Rabochiy;
    system("cls");
    if (L==NULL) {
        gotoxy(34,11);
        cout<<"Список пуст"<<endl;
        getch();
        return;
    }
    cout<<"Выберете поле для поиска"<<endl;
    setcolor(0,15);
    cout<<"Табельный номер"<<endl;
    setcolor(15,0);
    cout<<"Профессия"<<endl;
    int ch,i=1;
    char k1=(char)16,k2=(char)17;
    while (1) {
        ch=getch();// считывание нажатой клавиши
        if (ch == 72) {// если стрелка вверх
            i=1;
            gotoxy(0,1);
            setcolor(0,15);
            cout<<"Табельный номер"<<endl;
            setcolor(15,0);
            cout<<"Профессия"<<endl;
            cout<<"                  "<<endl;
        }
        if (ch == 80) {// если стрелка вниз
            i=2;
            gotoxy(0,1);
            setcolor(15,0);
            cout<<"Табельный номер"<<endl;
            setcolor(0,15);
            cout<<"Профессия"<<endl;
            setcolor(15,0);
            cout<<"                  "<<endl;
        }
        if (ch == 27) {// есди нажат esc
            return;
        }
        if (ch == 13) {// если выбран пункт
            system("cls");
            cout<<"Введите ";
            switch (i){
                case 1:// если выбран 1 пункт - поиск по табельному номеру номеру
                    gotoxy(0,0);
                    cout<<"табельный номер "<<endl;
                    T=poiskByNum();// функция поиска
                    break;
                case 2:// если выбран 2 пункт - поиск по профессии
                    gotoxy(0,0);
                    cout<<"профессию работника "<<endl;
                    T=poiskByProf();// функция поиска
                    break;
                default: break;
            }
            break;
        }
    }
    if(T == NULL){cout<<"Такого элемента нет в базе"<<endl;getch();return;}// если элемент не найден
    else{
        table();
        while(T!=NULL){// выводим все найденные записи, полученные из соответствующей функции поиска
            cout<<c<<setw(3)<<T->d.tabelnuy_nomer<<" "<<c<<setw(21)<<T->d.FIO;
            cout<<" "<<c<<setw(5)<<T->d.god_rogdenya<<" "<<c;
            if(T->d.pol==1)cout<<setw(2)<<"m"; else cout<<setw(2)<<"w";
            cout<<" "<<c<<setw(10)<<T->d.proffesia<<" "<<c<<setw(3)<<T->d.stag_raboty;
            cout<<" "<<c<<setw(2)<<T->d.razrad<<" "<<c<<setw(3)<<T->d.nomer_ceha;
            cout<<" "<<c<<setw(3)<<T->d.nomer_uchastka<<" "<<c<<setw(6)<<T->d.zarplata<<" "<<c<<endl;
            T=T->next;
        }
        table_niz(true);
        getch();
    }
}

//-------------------------------------------------------------

// функция отрисовки шапки выходной таблицы
void table1(){
    cout<<c1;
    for(int ii=0; ii<15; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<41; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<9; ii++)cout<<c7;
    cout<<c9<<endl;
    //-----------------------------------------------------------------
    cout<<c<<"               "<<c<<"  Средняя зароботная плата по разрядам   "<<c<<"         "<<c<<endl;
    cout<<c<<"  Стаж работы  "<<c5;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c4;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c2<<"  Всего  "<<c<<endl;
    cout<<c<<"               "<<c<<"  1 разряд   "<<c<<"  2 разряд   "<<c<<"  3 разряд   "<<c<<"         "<<c<<endl;
    //-----------------------------------------------------------------
    cout<<c5;
    for(int ii=0; ii<15; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c10;
    for(int ii=0; ii<9; ii++)cout<<c7;
    cout<<c2<<endl;
    //-----------------------------------------------------------------
}

//-------------------------------------------------------------

// функция отрисовки низа выходной таблицы
void table1_niz(){
    cout<<c8;
    for(int ii=0; ii<15; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<13; ii++)cout<<c7;
    cout<<c3;
    for(int ii=0; ii<9; ii++)cout<<c7;
    cout<<c6<<endl;
    cout<<"Для сохранения нажмите Ctrl+S"<<c<<"Для выхода Esc"<<endl;
}

//-------------------------------------------------------------

// функция составления и вывода данных выходной таблицы, а так же записи в файл
void Table(){
    int k=0,ch,fl,f1,ii;
    double d1,d2;
    T=L;int a[10000][4]={0};
    int stag[7]={0,6,11,16,21,25,9999};
    int mass1[6][4]={0};
    int mass2[6][4]={0};
    while(T!=NULL){// идем до конца списка
        for(ii=1; ii<7; ii++){// идем по заранее заготовленному массиву интервалов стажа
            if((T->d.stag_raboty < stag[ii]) && (T->d.stag_raboty > stag[ii - 1])){// если стаж попадпет в интервал
                mass1[ii - 1][(T->d.razrad - 1)]+=T->d.zarplata;
                mass1[ii - 1][3]+=T->d.zarplata;
                mass2[ii - 1][(T->d.razrad - 1)]++;
                mass2[ii - 1][3]++;
            }
        }
        T=T->next;
    }
    clrscr();
    table1();

    for(ii=0; ii<6; ii++){// цикл на вывод собранной статистики
        switch(ii){
            case 0: cout<<c<<" До "<<stag[ii + 1]<<setw(11)<<c; break;
            case 1: cout<<c<<" C "<<stag[ii]<<" до "<<stag[ii + 1]<<setw(6)<<c; break;
            case 5: cout<<c<<" Свыше "<<stag[ii]<<setw(7)<<c; break;
            default: cout<<c<<" C "<<stag[ii]<<" до "<<stag[ii + 1]<<setw(5)<<c; break;
        }
        if(mass2[ii][0]!= 0)// при подсчете могут оказаться нули, а на 0 делить нельзя
            cout<<setw(7)<<mass1[ii][0]/mass2[ii][0]<<setw(7)<<c;
        else
            cout<<setw(7)<<0<<setw(7)<<c;

        if(mass2[ii][1]!= 0)// при подсчете могут оказаться нули, а на 0 делить нельзя
            cout<<setw(7)<<mass1[ii][1]/mass2[ii][1]<<setw(7)<<c;
        else
            cout<<setw(7)<<0<<setw(7)<<c;

        if(mass2[ii][2]!= 0)// при подсчете могут оказаться нули, а на 0 делить нельзя
            cout<<setw(7)<<mass1[ii][2]/mass2[ii][2]<<setw(7)<<c;
        else
            cout<<setw(7)<<0<<setw(7)<<c;

        if(mass2[ii][3]!= 0)// при подсчете могут оказаться нули, а на 0 делить нельзя
            cout<<setw(7)<<mass1[ii][3]/mass2[ii][3]<<setw(3)<<c;
        else
            cout<<setw(7)<<0<<setw(3)<<c;
        cout<<endl;
    }
    table1_niz();
    while(1){// цикл на получение ответа от пользователя и записи таблицы в файл
        ch=getch();
        if(ch == 27){
            break;
        }
        if(ch == 19){// если пользователь нажал Ctrl+S для сохранения таблицы
            ofstream fout("table.txt", ios::out);
            for(ii=0; ii<6; ii++){
                switch(ii){
                    case 0: fout<<c<<" До "<<stag[ii + 1]<<setw(11)<<c; break;
                    case 1: fout<<c<<" C "<<stag[ii]<<" до "<<stag[ii + 1]<<setw(6)<<c; break;
                    case 5: fout<<c<<" Свыше "<<stag[ii]<<setw(7)<<c; break;
                    default: fout<<c<<" C "<<stag[ii]<<" до "<<stag[ii + 1]<<setw(5)<<c; break;
                }
                if(mass2[ii][0]!= 0)
                    fout<<setw(7)<<mass1[ii][0]/mass2[ii][0]<<setw(7)<<c;
                else
                    fout<<setw(7)<<0<<setw(7)<<c;

                if(mass2[ii][1]!= 0)
                    fout<<setw(7)<<mass1[ii][1]/mass2[ii][1]<<setw(7)<<c;
                else
                    fout<<setw(7)<<0<<setw(7)<<c;

                if(mass2[ii][2]!= 0)
                    fout<<setw(7)<<mass1[ii][2]/mass2[ii][2]<<setw(7)<<c;
                else
                    fout<<setw(7)<<0<<setw(7)<<c;

                if(mass2[ii][3]!= 0)
                    fout<<setw(7)<<mass1[ii][3]/mass2[ii][3]<<setw(3)<<c;
                else
                    fout<<setw(7)<<0<<setw(3)<<c;
                fout<<endl;
            }
            cout<<"Таблица записана"<<endl;
            getch();
            break;
        }
    }
    return;
}

//-------------------------------------------------------------

// основная программа - вызов меню и обработка результата (вызов соответствующей функции на обработку)
int main(){
    setcolor(15,0);
    int x;
    L=new Rabochiy; R=new Rabochiy;
    R=NULL; L=NULL;
    int kount;
    while(1){
        kount=meny();
        switch(kount){
            case 1: if(create_spisok()==1){sortNum=true; sortByNum();}break;
            case 2: system("cls");
                if(L==NULL){
                    gotoxy(34,11);
                    cout<<"Список пуст"<<endl;
                    getch();
                }
                else{
                    puts("Введите табельный номер");
                    fflush(stdin);
                    scanf("%3d",&x);
                    fflush(stdin);
                    udal(x);
                }
                break;
            case 3: view(); break;
            case 4: write_spisok(); break;
            case 5: add(); break;
            case 6: poisk(); break;
            case 7: Table(); break;
            case 8: return 0; break;
        }
    }
    return 0;
}
