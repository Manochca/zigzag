{Заполнение матрицы диогональной змейкой.}
  program zigzag;
uses  crt;
type
 massiv= array[1..10,1..10] of integer;
var
 n,i,j,l,k:integer;
 a:massiv;

procedure VIVOD(var a:massiv);
var
 i:byte;
begin
 For i:=1 to n do
 begin
  for j:=1 to n do
   write(a[i,j]:4);
   writeln;
 end;
end;

{процедура заполняющяя матрицу а числми от 0 до n по змейке}
procedure ZIGZAG(var a:massiv; n:integer);
var
 i,j,l,k:integer;

begin

 k:=-1;
  For l:=1 to 2*n-1 do {количество диагоналей, паралельных побочной}
  begin{1}
   if l>n then {выше диагонали}
   begin{2}
    if odd(l) then
     for i:=l-n+1 to n do
     begin{3}
      k:=k+1;
      a[i,l-i+1]:=k;
     end{3}
    else
     For i :=n downto l-n+1 do
     begin{4}
      k:=k+1;
      a[i,l-i+1]:=k;
     end;{4}
   end{2}
   else
    if l<=n then {ниже диагонали и н ней}
    begin {5}
     if odd(l) then
      For i:=1 to l do
      begin{6}
       k:=k+1;
       a[i,l-i+1]:=k;
      end{6}
     else
     for i:=l downto 1 do
     begin{7}
      k:=k+1;
      a[i,l-i+1]:=k;
     end;{7}
      end;{6}
    end;{5}
 end;{1}

BEGIN
clrscr;
Write('n= ');
  Readln(n);

  ZIGZAG(a,n);


VIVOD(a);
  Readln;
end.
