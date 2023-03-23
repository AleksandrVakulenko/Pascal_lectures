// 4 -1

program Project41;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var arr: array of real;
    n, i, minIndex: integer;
    minVal: real;

begin
  readln(N);
  SetLength(arr, N);
  for i := 0 to N-1  do
      begin
          arr[i] := random;
      end;
  minVal := arr[0];
  minIndex := 0;
  for I := 1 to N-1 do
      begin
          if arr[I] < minVal then
             begin
                 minVal := arr[I];
                 minIndex := I;
             end;
      end;
  for i := 0 to N-1 do
      writeln(i, ' : ' , arr[i]);
  writeln(' Наименьшее число : ', minVal, 'его индекс: ', minIndex);
end.
