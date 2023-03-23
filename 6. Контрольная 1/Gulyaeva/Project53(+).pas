// 4 -3

program Project53;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var arr: array of real;
    i, j, N : integer;
    t: real;

begin
  readln(N);
  SetLength(arr, N);
  for i := 0 to N-1  do
      begin
          arr[i] := random;
      end;
  for i := 0 to N do
      for j := 0 to N do
          if arr[j] > arr[j+1] then
          begin
              t := arr[j];
              arr[j] := arr[j+1];
              arr[j+1] := t;
          end;
  writeln; 
  for I := 0 to N do
      writeln( arr[I]:0:6);

end.
