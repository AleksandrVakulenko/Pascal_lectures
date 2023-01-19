program condition_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;

// These functions return T/F and print messages while executing.
// So you could see then some of them are executing.
function cond_1(arg:integer) : Boolean;
begin
	writeln('Cond_1');
	cond_1 := arg < 10;
end;

function cond_2(arg:integer) : Boolean;
begin
	writeln('Cond_2');
	cond_2 := arg > 0;
end;


var
	i : integer;
	Arr : array of real;

begin
	i := 11;
	writeln(cond_1(i));
	writeln(cond_2(i));
	writeln;
	
	// If first is False in AND statement then second does not executed.
	writeln(cond_1(i) and cond_2(i));
	writeln;
	
	// If first is True in OR statement then second does not executed.
	writeln(cond_2(i) or cond_1(i));
	writeln;
	
	
	setlength(Arr, 10);
	writeln(Length(Arr));
	i := 7;
	// Safe condition in case if i is out of range.
	if (i < Length(Arr)) and (Arr[i] = 0.67) then 
		writeln('Nyan')
	else
		writeln('Not Nyan');
	
	
	Arr := nil;
end.