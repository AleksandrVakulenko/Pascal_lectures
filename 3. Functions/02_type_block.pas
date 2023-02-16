program foo_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	pair = array[0..1] of integer;


function swap(arg:pair) : pair;
	var 
		temp : pair;
	begin
		temp[0] := arg[1];
		temp[1] := arg[0];
		swap := temp;
	end;


var
	nyan : pair = (3, 6);
begin
	writeln(nyan[0], ' ', nyan[1]);
	nyan := swap(nyan);
	writeln(nyan[0], ' ', nyan[1]);
end.












