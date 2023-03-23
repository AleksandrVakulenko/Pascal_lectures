//3-1
program task_1;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

var
  a, max, n, i: integer;
begin
  readln(n);
  a := 1;
  max := 5;
  for i := 1 to n-1 do
  begin
    write(a, ' ');
    a := a+5;
    if a > max then
    max :=a;
  end;
writeln(a);
writeln(max);
readln;
end.

