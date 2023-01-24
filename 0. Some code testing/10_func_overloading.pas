program func_overloading;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
procedure Print(arg : integer); overload;
	begin
		writeln('I''m integer func');
	end;

procedure Print(arg : real); overload;
	begin
		writeln('I''m real func');
	end;

procedure Print(arg : char);  overload;
	begin
		writeln('I''m char func');
	end;


var
	i : integer;
	c : char;
	r : real;

begin

	Print(i);
	Print(c);
	Print(r);

end.
