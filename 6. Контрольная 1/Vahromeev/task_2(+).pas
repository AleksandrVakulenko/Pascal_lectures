//
//4 - 2
program nomb2;

const ARRAY_SIZE = 5;

type
    TArray = array[0..array_size-1] of Integer;

var
    arr:TArray;


function Swap(var a, b: Integer): Integer;
    var 
        temp: Integer;
    begin
        temp := a;
        a := b;
        b := temp;
    end;


procedure PrintArray(const arr: TArray);
    var
        i: Integer;
    begin
        for i := 0 to ARRAY_SIZE-1 do begin 
            write(arr[i], ' ');
        end;
        writeln;
    end;
    
    
begin
Randomize;
for var i := 0 to ARRAY_SIZE-1 do begin 
    arr[i] := Random(100) + 1;
end;
writeln('Массив до перестоновки: ');
PrintArray(arr);
Swap(arr[1], arr[3]);
Writeln(' Массив после перестановки: ');
PrintArray(arr);
end.