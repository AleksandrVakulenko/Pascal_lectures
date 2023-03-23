//4-1
program test;

var
    arr: array of real; 
    n, i, minIndex: integer;
    minValue: real;

begin
    write('Введите размер массива: ');
    readLn(n);
    
    SetLength(arr, n);
    
    randomize; 
    for i := 0 to n - 1 do
    begin
        arr[i] := random;
        write(arr[i], ' ');
    end;
    writeln;
    
    minValue := arr[0];
    minIndex := 0;
    for i := 1 to n - 1 do
    begin
        if (arr[i] < minValue) then begin
            minValue := arr[i];
            minIndex := i;
        end;
    end;
    
    writeLn('Наименьшее число в массиве: ', minValue);
    writeLn('Индекс числа в массиве: ', minIndex);
end.