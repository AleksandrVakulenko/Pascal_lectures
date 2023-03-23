//+
program task1;

uses Math;

var
    a,max,n,i:integer;

begin
readln(n);
a := 1;
max := -5;

for i:=1 to n-1 do begin
    Write(a,' ');
    a := a + 5;

    if a > max then
        max := a;
end;

Writeln(a);
Writeln(max);
end.
