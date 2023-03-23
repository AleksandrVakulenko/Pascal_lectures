
program test1;
{$APPTYPE CONSOLE}

const
    k = 100;// Размер массива

var
    a: array [1..k] of integer;
    N: integer; // Количество элементов в массиве
    i: integer;

begin
    randomize;
    N := random(100);
    for i := 1 to N do
        a[i] := Random(100);
    writeln(N, ' Элементы массива: ');
    for i := 1 to N do
        writeln(a[i]);
end.