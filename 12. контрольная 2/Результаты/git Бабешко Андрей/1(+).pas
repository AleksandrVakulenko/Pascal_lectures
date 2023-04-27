Program vec_obj;
{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

type
  vec3 = object
  private
    x, y, z: real;
  public
    constructor create(ax, ay, az: real);
    constructor copy(arg_r: vec3);
    constructor zero();
    function sum(arg_r: vec3): vec3;
    function dot_product(arg_r: vec3): real;
    procedure print_value();
  end;

var
  a, b, c: vec3;

constructor vec3.create(ax, ay, az: real);
begin
  x := ax;
  y := ay;
  z := az;
end;

constructor vec3.copy(arg_r: vec3);
begin
  x := arg_r.x;
  y := arg_r.y;
  z := arg_r.z;
end;

constructor vec3.zero;
begin
  x := 0;
  y := 0;
  z := 0;
end;

function vec3.sum(arg_r: vec3): vec3;
begin
  Result.x := x + arg_r.x;
  Result.y := y + arg_r.y;
  Result.z := z + arg_r.z;
end;

function vec3.dot_product(arg_r: vec3): real;
begin
  Result := x * arg_r.x + y * arg_r.y + z * arg_r.z;
end;

procedure vec3.print_value;
begin
  writeln('(', x:0:2, ',', y:0:2, ',', z:0:2, ')');
end;

begin
  a.create(1, 2, 3);
  a.print_value;

  b.create(1, 1, 10);
  b.print_value;

  c := b.sum(a);
  c.print_value;

  writeln(a.dot_product(b):0:3);

  writeln('OK!');
  readln;
end.
