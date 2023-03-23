
//
//4 - 1

program nomb1;

var
    N, i, minIndex: integer;
    arr: array of real;
    minVal: real;
    
Begin
write('введите размер массива N: ');
readln(N);
SetLength(arr, N);
Randomize;

for i := 0 to N-1 do begin 
    arr[i] := Random;
    writeln('arr[', i, '] = ', arr[i]);
end;

minVal := arr[0];
minIndex :=0;

for i := 1 to N-1 do begin 
    if arr[i] < minVal then begin
        minVal := arr[i];
        minIndex := i;
    end;
end;

writeln('наименьше число: ', minVal);
writeln('Индекс наименьшего числа: ', minIndex);
end.