// -
// требуется именно вызов функции
//1-3
program Variant1_Zadanie3;
{$APPTYPE CONSOLE}

uses
    SysUtils;

const
    n = 3;
var
    a,b,c:array[1..n] of integer;
    i:integer;
    
begin
writeln('x1,y1,z1 for A:');

for i:=1 to n do
    read(a[i]);

writeln('x2,y2,z3 for B:');
    
for i:=1 to n do
    read(b[i]);
    
for i:=1 to n do begin
    c[i]:=a[i]+b[i];
    write(c[i]:4)
end;

end.
