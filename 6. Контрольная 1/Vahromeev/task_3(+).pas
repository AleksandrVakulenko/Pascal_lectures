//4 - 3
program nomb3;
var
    N,i,j: integer;
    arr: array of real;
    minVal, temp: real;
    
Begin
write('������� ������ ������� N: ');
readln(N);
SetLength(arr, N);
Randomize;

for i :=0 to N-1 do 
    arr[i] := Random;
    
writeln('�������� ������: ');

for i :=0 to N-1 do 
    writeln('arr[', i, '] = ', arr[i]:0:2);
    
minVal := arr[0];
for i := 1 to N-1 do 
    if arr[i] < minVal then begin
        minVal := arr[i];
        j := i;
    end;
    
writeln('��������� �����: ', minVal:0:2);
writeln('������ ����������� �����: ', j);

for i := 0 to N-2 do 
    for j := i+1 to N-1 do
        if arr[j] < arr[i] then begin
            temp := arr[i];
            arr[i] := arr[j];
            arr[j] := temp;
        end;
        
writeln('������������� ������: ');

for i := 0 to N-1 do 
    writeln('arr[', i, '] = ', arr[i]:0:2);
    
end.