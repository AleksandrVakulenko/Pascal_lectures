//4-3
program test;

var
    arr: array of real; 
    n, i, minIndex, x: integer;
    minValue: real;


procedure BubbleSort(var arr: array of real);
    var
        i, j, len: integer; 
        t: real;
    begin
        len := length(arr);
        for i := 0 to len - 2 do
        begin
            for j := 0 to len - i - 2 do
            begin
                if (arr[j] > arr[j + 1]) then begin
                    t := arr[j];
                    arr[j] := arr[j + 1];
                    arr[j + 1] := t;
                end;
            end;
        end;
    end;


procedure SelectionSort(var arr: array of real);
    var
        i, j, maxIdx, len: integer;
        t: real;
    begin
        len := length(arr);
        for i := 0 to len - 2 do begin
            maxIdx := i;
            for j := i + 1 to len - 1 do begin
                if arr[j] > arr[maxIdx] then 
                    maxIdx := j;
            end;
            t := arr[i];
            arr[i] := arr[maxIdx];
            arr[maxIdx] := t;
        end;
    end;


begin
    write('Введите размер массива: ');
    readln(n);
    
    SetLength(arr, n);
    
    randomize; 
    for i := 0 to n - 1 do
    begin
        arr[i] := random; 
    end;
    
    minValue := arr[0];
    minIndex := 0;
    for i := 1 to n - 1 do
    begin
        if (arr[i] < minValue) then begin
            minValue := arr[i];
            minIndex := i;
        end;
    end;
    
    write('Сортировать по убыванию(0) или по возрастанию(1)? Введите цифру: ');
    readln(x);
    if x = 1 then BubbleSort(arr) else SelectionSort(arr);
    writeln('Наименьшее число в массиве: ', minValue);
    writeln('Индекс числа в массиве: ', minIndex);
    writeln();
    for i := 0 to Length(arr) - 1 do
        write(arr[i], ' ');
end.