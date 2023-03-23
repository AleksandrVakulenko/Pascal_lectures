//не создан тип
//2-3
program v2task3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x1,x2,y1,y2,res:real;

function operation(x1,x2,y1,y2:real):real;
    begin
      operation:=Abs(x1*x2+y1*y2)/sqrt(x1*x2+y1*y2);
    end;
    
begin
readln(x1,x2,y1,y2);
res:=operation(x1,y1,x2,y2);
writeln(res);
readln(res); readln(res);
end.
