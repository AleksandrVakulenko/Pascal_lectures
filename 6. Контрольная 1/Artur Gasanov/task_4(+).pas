//+
program task_4;
// 5 - 4
{$APPTYPE CONSOLE}

uses
    SysUtils;

const
    N = 5;
  
var
    mas: array [1..N] of integer;
    i, j, r: integer;
  
begin
mas[1] := 22;
mas[2] := 36;
mas[3] := 28;
mas[4] := 589;
mas[5] := 11;

for i := 1 to N-1 do
    for j := 1 to N-i do
        if(mas[j] > mas[j+1]) then begin
            r := mas[j];
            mas[j] := mas[j+1];
            mas[j+1] := r;
        end;
       
for i := 1 to N do
    writeln(mas[i]);

readln;

end.
