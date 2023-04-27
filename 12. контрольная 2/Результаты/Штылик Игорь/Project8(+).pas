 Program pas_01;


{$APPTYPE CONSOLE}


uses
  SysUtils,
  Math;

type
vec3 = object private
x, y, z: real; public



constructor create(ax, ay, az: real);
constructor copy(arg_r: vec3);
constructor zero();
function sum(arg_r: vec3): vec3;
function dot_product(arg_r: vec3): real;
function length(): real;
function normalize(): vec3;
procedure print_value();



end;






constructor vec3.create(ax, ay, az: real);


begin


x := ax;
y := ay;
z := az;


end;




constructor vec3.copy(arg_r: vec3);

begin

x := arg_r.x; y := arg_r.y;

z := arg_r.z;

end;




constructor vec3.zero();


begin
x := 0;
y := 0;
z := 0;
end;



function vec3.sum(arg_r: vec3): vec3;


begin
result.x := x + arg_r.x; result.y := y + arg_r.y;
result.z := z + arg_r.z;

end;




function vec3.dot_product(arg_r: vec3): real;
begin
result := x * arg_r.x + y * arg_r.y + z * arg_r.z;
end;




function vec3.length(): real;


begin

result := sqrt(x * x + y * y + z * z);

end;




function vec3.normalize(): vec3;

var len: real;

begin len := length();

if len <> 0 then

begin

result.x := x / len;
result.y := y / len; 
result.z := z / len;

end





 else

 begin result.x := x;

result.y := y; result.z := z;

end;

end;




procedure vec3.print_value();

begin writeln('(', x:0:3, ', ', y:0:3, ', ', z:0:3, ')');

end;



var a, b, c: vec3;

begin

a.create(1, 2, 3); a.print_value;

b.create(1, 1, 10); b.print_value;

c := b.sum(a); c.print_value;
writeln(a.dot_product(b):0:3); writeln('Length of a:', a.length():0:3);
writeln('Normalized a:'); a.normalize().print_value;
writeln('OK!');

readln

end.

