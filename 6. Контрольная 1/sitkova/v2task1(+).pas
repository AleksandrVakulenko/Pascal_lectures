//2-1
program v2task1;
{$APPTYPE CONSOLE}

uses
    Math;

var
    a,max,n,i: integer;

begin
readln(n);
a:=1;
max:=-5;

for i := 1 to n - 1 do begin
    write(a, ' ');
    a:=a+5;
    if a>max then
    max:=a;
end;

writeln(a);
Writeln(max);
readln(a); readln(a);
end.
