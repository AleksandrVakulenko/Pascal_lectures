const 
  n = 100;
var
  arr: array [1..n] of integer;
  i, sum: integer;
  average: real;

begin
  randomize;
  for i := 1 to n do
    arr[i] := Random(100);
  sum := 0;
  for i := 1 to n do
    sum := sum + arr[i];
  average := sum / n;
  writeLn('Массив:');
  for i := 1 to n do
    write(arr[i], ' ');
  writeln;
  writeln('Среднее значение: ', average:0:2);
end.