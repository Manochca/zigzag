{�ணࠬ�������஢뢠�� ���ᨢ
��⮤�� ����쪮��� ���஢�� � ���浪� �����⠭��,
� ����ࠨ���� ������ ���ᨢ� � ������ ��������}
program Lab3;
uses Crt;
const n=25;
      u=5;

type
 massiv=array[0..n] of integer;
 matrix=array[1..u,1..u] of integer;
Var
 i,j,R,t: integer;
 a:matrix;
 b:massiv;

 procedure SWAP(var x,y:integer);
var  T:integer;
 begin
  T:=x;
  x:=y;
  y:=T;
 end;

{��楤�� �����樨 ��砩��� �ᥫ ���ᨢ�}
procedure VVOD(var b:massiv);
var
 i:byte;
begin
randomize;
 for i:=0 to N-1 do
 b[i]:=random(n);
end;

{��楤��  �뢮�� �� �࠭ ��������� ���ᨢ�}

procedure VIVOD(var b:massiv);
var
 i:byte;
begin
 For i:=0 to n-1 do
 write(b[i]:3);
 writeln;
end;

 {��楤�� ���஢�� ���ᨢ�}
 procedure SORT(var b:massiv);
 var
  R,j:integer;
  begin
  writeln('��室�� ���ᨢ: ');
 VIVOD(b);
 {Bubble Sort optim.}
 R:=n-1;
  repeat
   t:=-1;
   for j:=0 to R-1 do
    if b[j]>b[j+1] then
     begin
      SWAP(b[j],b[j+1]);
      t:=j;
     end;
    R:=t;
  until R=-1;
  end;

 procedure VIVODMASS(var a:matrix);
var
 i:integer;
begin
 For i:=1 to u do
 begin
  for j:=1 to u do
     begin
       write(a[i,j]:4);

     end;
       writeln;
 end;
end;

{��楤�� ����������� ������ � �᫬� �� 0 �� n �� ������}
procedure ZIGZAG(var a: matrix ;u:integer);
var
 i,j,l,k:integer;

begin

clrscr;
VVOD(b);
Writeln;
SORT(b);
Writeln('�����஢���� ���ᨢ: ');
VIVOD(b);


 k:=-1;
  For l:=1 to 2*u-1 do {������⢮ ����������, ��ࠫ����� ����筮�}
  begin{1}
   if l>u then {��� ���������}
   begin{2}
    if odd(l) then
     for i:=l-u+1 to u do
     begin{3}
      k:=k+1;
      a[i,l-i+1]:=b[k];
     end{3}
    else
     For i :=u downto l-u+1 do
     begin{4}
      k:=k+1;
      a[i,l-i+1]:=b[k];
     end;{4}
   end{2}
   else
    if l<=u then {���� ��������� � � ���}
    begin {5}
     if odd(l) then
      For i:=1 to l do
      begin{6}
       k:=k+1;
       a[i,l-i+1]:=b[k];
      end{6}
     else
     for i:=l downto 1 do
     begin{7}
      k:=k+1;
      a[i,l-i+1]:=b[k];
     end;{7}
      end;{6}
    end;{5}
 end;{1}


BEGIN
clrscr;

ZIGZAG(a,u);
VIVODMASS(a);



END.
