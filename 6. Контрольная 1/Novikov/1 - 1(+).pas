//1 - 1
program Project4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
   N, I : integer;

begin
  Writeln('Type N : ');
  readln(N);
  for I := 1 to N do begin
     writeln('Element N',I,' is ', I*5);
  end;
   readln;
end.
