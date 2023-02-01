program range_type;
{$APPTYPE CONSOLE}

uses
	SysUtils;

var
	A : 10..100;


begin
	
	A := 10;
	A := A - 1;
	
	writeln(A);

end.