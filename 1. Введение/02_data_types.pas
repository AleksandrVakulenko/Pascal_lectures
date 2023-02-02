program data_types;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
var
	i, j : integer;
	A, B : Single;
	D : Extended;

begin

	i := 3;
	
	writeln('Size of Extended: ', sizeof(D));
	
	write('Size of Single: ');
	writeln(sizeof(A));

	
	write('Enter i: ');
	readln(i);
	
	writeln(i);
	
	readln; //if you run it from IDE
end.
