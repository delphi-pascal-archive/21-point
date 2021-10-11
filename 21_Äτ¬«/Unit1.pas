unit Unit1; // MASTER 4ief (c) 2009

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus;
type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Timer2: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label3: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);

    procedure brat();
    procedure bratI();
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure proverka();
    procedure ochistka();
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  score: integer; //счёт
  scoreE:integer; //счёт противника
  cards: integer; //колтичство карт
  cardsE: integer; //количество карт противника

implementation

{$R *.dfm}
//////////////////////


//////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////enemy ai
procedure Tform1.Proverka();
begin
  if (score > scoreE) and (score < scoreE) then Label3.caption:= 'У обоих перебор'
    else
  if 21 < scoreE then  Label3.caption:= 'Я перебрал'
    else
  if 21 < score  then Label3.caption:= 'У тебя перебор'
    else
  if score <scoreE then Label3.caption:= 'Я выиграл!'
    else
  if score>scoreE then Label3.caption:= 'Ты выиграл'
    else
  if score=scoreE then Label3.caption:= 'Ничья'
end;

////////////////////////////
//////////////////////////

  //cardnames[0]:='Туз';    //- 11 очков
  //cardnames[1]:='Двойка'; //2
  //cardnames[2]:='Тройка'; //3
  //cardnames[3]:='Четвёрка'; //4
  //cardnames[4]:='Пятёрка';  //5
  //cardnames[5]:='Шестёрка'; //6
  //cardnames[6]:='Семёрка';  //7
  //cardnames[7]:='Восьмёрка'; //8
  //cardnames[8]:='Девятка';   //9
  //cardnames[9]:='Десятка';   //10
  //cardnames[10]:='Валет';    //2
  //cardnames[11]:='Дама';     //3
  //cardnames[12]:='Король';   //4

procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
  button1.Enabled:=false;
  button2.Enabled:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);

//mast: extended;
begin
  cards:=cards+1;
  if cards>9 then showmessage('Хватит тебе')
    else
bratI();
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin

  ///label3.Caption:=inttostr(cards);
  label4.Caption:=inttostr(score);
  ///label5.Caption:=inttostr(cardsE);
  label6.Caption:=inttostr(scoreE);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ochistka();
button1.Enabled:=true;
button2.Enabled:=true;
button3.Enabled:=false;
label3.Caption:='';
score:=0;
cards:=0;
scoreE:=0;
cardsE:=0;

begin
    cardsE:=cardsE+1;
    brat();

cards:=cards+1;

    bratI();
end;
end;
procedure TForm1.bratI();
var car,i:integer;
begin
  car:=random(52);

for i:=1 to 52 do
   if car=i then begin image9.Picture.LoadFromFile ('bitmap/'+inttostr(i)+'.bmp');end;
   if car=0 then begin image9.Picture.LoadFromFile ('bitmap/1.bmp');end;
case car of
1 , 14 , 27 ,40:begin score:=score+11; end;
2 , 15 , 28 , 41:begin score:=score+2; end;
3 , 16 , 29 , 42:begin score:=score+3; end;
4 , 17 , 30 , 43:begin score:=score+4; end;
5 , 18 , 31 , 44:begin score:=score+5; end;
6 , 19 , 32 , 45:begin score:=score+6; end;
7 , 20 , 33 , 46:begin score:=score+7; end;
8 , 21 , 34 , 47:begin score:=score+8; end;
9 , 22 , 35 , 48:begin score:=score+9; end;
10 , 23 , 36 , 49:begin score:=score+10;end;
11 , 24 , 37 , 50:begin score:=score+2; end;
12 , 25 , 38 , 51:begin score:=score+3; end;
13 , 26 , 39 , 52:begin score:=score+4; end;
end;

  if image1.Tag=0 then
begin
  image1.Picture:=image9.Picture;
  image1.Tag:=1;
end
else if image2.Tag=0 then
begin
  image2.Picture:=image9.Picture;
  image2.Tag:=1;
end
else if image3.Tag=0 then
begin
  image3.Picture:=image9.Picture;
  image3.Tag:=1;
end
else if image4.Tag=0 then
begin
  image4.Picture:=image9.Picture;
  image4.Tag:=1;
end
else if image5.Tag=0 then
begin
  image5.Picture:=image9.Picture;
  image5.Tag:=1;
end
else if image6.Tag=0 then
begin
  image6.Picture:=image9.Picture;
  image6.Tag:=1;
end
else if image7.Tag=0 then
begin
  image7.Picture:=image9.Picture;
  image7.Tag:=1;
end
else if image8.Tag=0 then
begin
  image8.Picture:=image9.Picture;
  image8.Tag:=1;
end
else if image10.Tag=0 then
begin
  image10.Picture:=image9.Picture;
  image10.Tag:=1;
end;

end;

procedure TFOrm1.brat();
var car,i:integer;
begin
  car:=random(52);
for i:=1 to 52 do
    if car=i then begin image20.Picture.LoadFromFile ('bitmap/'+inttostr(i)+'.bmp');end;
    if car=0 then begin image20.Picture.LoadFromFile ('bitmap/1.bmp');end;
case car of
1 , 14 , 27 , 40:begin scoreE:=scoreE+11; end;
2 , 15 , 28 , 41:begin scoreE:=scoreE+2; end;
3 , 16 , 29 , 42:begin scoreE:=scoreE+3; end;
4 , 17 , 30 , 43:begin scoreE:=scoreE+4; end;
5 , 18 , 31 , 44:begin scoreE:=scoreE+5; end;
6 , 19 , 32 , 45:begin scoreE:=scoreE+6; end;
7 , 20 , 33 , 46:begin scoreE:=scoreE+7; end;
8 , 21 , 34 , 47:begin scoreE:=scoreE+8; end;
9 , 22 , 35 , 48:begin scoreE:=scoreE+9; end;
10 , 23 , 36 , 49:begin scoreE:=scoreE+10; end;
11 , 24 , 37 , 50:begin scoreE:=scoreE+2; end;
12 , 25 , 38 , 51:begin scoreE:=scoreE+3; end;
13 , 26 , 39 , 52:begin scoreE:=scoreE+4; end;
end;
  if image11.Tag=0 then
begin
  image11.Picture:=image20.Picture;
  image11.Tag:=1;
end
else if image12.Tag=0 then
begin
  image12.Picture:=image20.Picture;
  image12.Tag:=1;
end
else if image13.Tag=0 then
begin
  image13.Picture:=image20.Picture;
  image13.Tag:=1;
end
else if image14.Tag=0 then
begin
  image14.Picture:=image20.Picture;
  image14.Tag:=1;
end
else if image15.Tag=0 then
begin
  image15.Picture:=image20.Picture;
  image15.Tag:=1;
end
else if image16.Tag=0 then
begin
  image16.Picture:=image20.Picture;
  image16.Tag:=1;
end
else if image17.Tag=0 then
begin
  image17.Picture:=image20.Picture;
  image17.Tag:=1;
end
else if image18.Tag=0 then
begin
  image18.Picture:=image20.Picture;
  image18.Tag:=1;
end
else if image19.Tag=0 then
begin
  image19.Picture:=image20.Picture;
  image19.Tag:=1;
end;

end;
procedure TForm1.Button2Click(Sender: TObject);
var x:integer;

begin
  timer2.enabled:=true;
  button1.Enabled:=false;
  button2.Enabled:=false;
  button3.Enabled:=false;
  x:=random(9);
while x<9 do
  begin
    if scoreE<10 then
      begin
      cardsE:=cardsE+1;
      brat();
      end
  else
    if random(20)>10 then
      begin
        cardsE:=cardsE+1;
        brat();
      end
  else exit;
end; 
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
proverka();
button3.Enabled:=true;
end;
procedure Tform1.ochistka();
var i:integer;
begin
timer2.Enabled:=false;
for i:=1 to 20 do
  begin
    //имеются некоторые "TImage" которые нужно очистить
    //картинку, можно перебрать по имени
    (FindComponent(Format('Image%d',[i])) as TImage).Picture:=nil;
    (FindComponent(Format('Image%d',[i])) as TImage).tag:=0;
  end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
showmessage('В данной игре выигрывает то кто наберёт в сумме 21 очко.');
showmessage('Очки считаются следующим образом:');
Showmessage('карты с 2 по 10 соответствуют своим очкам,');
Showmessage('валет - 2 очка,');
Showmessage('дама - 3 очка,');
Showmessage('король - 4 очка,');
Showmessage('туз - соответствует 11 очкам.');
end;

end.










