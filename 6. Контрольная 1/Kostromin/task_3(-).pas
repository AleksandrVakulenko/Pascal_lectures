// -
//тип не содан
//3-3
program task_3;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

var
  x1, x2, y1, y2, z1, z2, res: integer;

function operation(x1,y1,z1,x2,y2,z2: integer): integer;
  begin
    operation := Abs(x1 * x2 + y1 * y2 + z1 * z2)
  end;

begin
  readln(x1, y1, z1, x2, y2, z2);
  res := operation(x1, y1, z1, x2, y2, z2);
  writeln(res);
  readln;
end.
