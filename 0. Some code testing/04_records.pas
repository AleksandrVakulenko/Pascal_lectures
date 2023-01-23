program records;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
Type
	CPX = record
		Re, Im : real;
	end;

	VEC3 = record
		x,y,z : real;
	end;

procedure show_vec(arg : VEC3);
begin
	write('(', arg.x:5:3, ', ', arg.y:5:3, ', ', arg.z:5:3, ')');
	writeln;
end;

function dot_product(arg1, arg2: VEC3): real;
begin
	dot_product := arg1.x*arg2.x + arg1.y*arg2.y + arg1.z*arg2.z;
end;

var
	A, B : VEC3;
	
begin
	A.x := 1;
	A.y := 2;
	A.z := 3;
	
	B.x := 1;
	B.y := 1;
	B.z := 2;
	
	show_vec(A);
	show_vec(B);
	writeln(dot_product(A, B):5:3);


end.




