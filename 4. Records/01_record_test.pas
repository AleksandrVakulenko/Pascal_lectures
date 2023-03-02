program records;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
Type
	VEC3 = record
		x,y,z : real;
	end;

function create_vec3(x,y,z:real) : VEC3;
	var
		output : VEC3;
	begin
		output.x := x;
		output.y := y;
		output.z := z;
		create_vec3 := output;
	end;

function dot_product(arg1, arg2: VEC3): real;
	begin
		dot_product := arg1.x*arg2.x + arg1.y*arg2.y + arg1.z*arg2.z;
	end;

var
	A, B : VEC3;
begin
	A := create_vec3(1, 2, 3);
	B := create_vec3(1, 1, 2);
	
	writeln(dot_product(A, B):5:3);
end.




