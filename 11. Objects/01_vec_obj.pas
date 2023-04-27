Program vec_obj;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

type
    vec3 = object
    private
        x,y,z : real;
    public
        constructor set_value(ax, ay, az : real);
		//constructor copy(arg_r : vec3);
        constructor zero();
        //function sum(arg_r : vec3) : vec3;
		//function dot_product(arg_r : vec3) : real;
        procedure print_value();
    end;

constructor vec3.set_value(ax, ay, az : real);
	begin
		x := ax;
		y := ay;
		z := az;
	end;

constructor vec3.zero();
	begin
		x := 0;
		y := 0;
		z := 0;
	end;

procedure vec3.print_value();
	begin
		writeln(x, ' ', y, ' ', z);
	end;
	
var
	a: vec3;
	
Begin
    a.set_value(1,2,3);
	a.print_value;
	
    a.set_value(0,0,0);
	a.print_value;
	

End.






