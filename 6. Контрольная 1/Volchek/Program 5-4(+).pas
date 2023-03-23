const
n=10;
var
arr: array [1..n] of Integer;
i, j, t: Integer;
begin
randomize;
writeln('Исходный массив:');
for i := 1 to n do
begin
arr[i] := random(100);
write(arr[i], ' ');
end;
{Сортировка пузырьком}
for i := 1 to n-1 do
for j := i + 1 to n do
if arr[i] > arr[j] then
begin
t:= arr[i];
arr[i] := arr[j];
arr[j] := t;
end;
writeln;
writeln('Отсортированный массив:');
for i := 1 to 10 do
write(arr[i], ' ');
end.
