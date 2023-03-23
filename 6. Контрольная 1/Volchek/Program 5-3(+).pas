var
  arr: array [1..10] of integer;
  i, sum: integer;
  average: real;

begin
  Randomize;
  for i := 1 to 10 do
    arr[i] := Random(100);
  sum := 0;
  for i := 1 to 10 do
    sum := sum + arr[i];
  average := sum / 10;
  for i := 1 to 10 do
    if arr[i] < average then
      arr[i] := 0;
  writeLn('Массив:');
  for i := 1 to 10 do
    write(arr[i], ' ');
end.