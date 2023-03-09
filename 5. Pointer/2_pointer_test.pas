program pointers;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	vec3 = array[0..2] of real;
	vec3_p = ^vec3;


function vec3_init(x,y,z:real) : vec3;
    var
        temp : vec3;
    begin
        temp[0] := x;
        temp[1] := y;
        temp[2] := z;
        vec3_init := temp;
    end;


procedure vec3_print(arg:vec3);
    begin
        writeln(format('(%0.4f; %0.4f; %0.4f)', [arg[0], arg[1], arg[2]]));
    end;


var
    a,b : vec3;
    ptr : vec3_p;
    
begin
    a := vec3_init(2, 343.412, 47/233);
    b := vec3_init(1, 22, 334);
    vec3_print(a);
    
    ptr := @a;
    vec3_print(ptr^);
   
end.