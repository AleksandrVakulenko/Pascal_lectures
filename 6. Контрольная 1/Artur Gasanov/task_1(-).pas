// -
// число элементов не случайно

//5-1
program task_1;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;
  Randomise;

const
  n = 10;
var

  a : array[1..n] of integer;
  i : integer;
begin
  randomize;
  for i:=1 to n do
    a[i] := random();

 
  write('Массив: ');
  for i:=1 to n do
    write(a[i]:4);
  writeln;
 
end.
