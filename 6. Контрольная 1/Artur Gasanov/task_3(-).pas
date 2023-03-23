// -
// не работает с массивом (1,2,3,4,5,1)

program task_3;
//5 - 3
{$APPTYPE CONSOLE}

uses
    SysUtils;
    
    
procedure ZeroBelowAverage(var arr: array of integer);
    var
        i,sum,avg : integer;
    begin
        sum := 0;
        for i := 0 to High(arr) do begin
            sum:= sum + arr[i];
        end;
        
        avg:= sum div Length(arr);
    
        for i := 0 to High(arr) - 1 do begin
            if arr[i] < avg then
                arr[i] := 0;
        end;
    end;
    
    
var
  arr:array[0..5] of integer = (1,2,3,4,5,1);
  i : integer;
  
begin
    ZeroBelowAverage(arr);
    
    for i := 0 to high(arr) do
        writeln(arr[i]);
    readln;
end.
