program test;
{$APPTYPE CONSOLE}

uses
SysUtils;


var
	i : integer = 0;
	
	
begin


	i := 0;
	while i < 10 do begin
		writeln(i);
		i := i + 1;
	end;
	
	writeln;
	
	
	i := 0;
	repeat
		writeln(i);
		i := i + 1;
	until i > 10;

	writeln;

end.

