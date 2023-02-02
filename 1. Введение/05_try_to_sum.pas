program afksdflakjs;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	

var
	A, B, C : single;


begin
	A := 0.6;
	B := 0.03;
	
	C := A + B;
	
	writeln('C = ', C);
	writeln('it does not look good, do something else');
	
	readln;
end.
