program Ekimtsev01;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

type
  vec3 = record
  private
    x, y, z: real;
  public
    constructor create(ax, ay, az: real);
    constructor copy(const arg_r: vec3);
    constructor zero();
    function sum(const arg_r: vec3): vec3;
    function dot_product(const arg_r: vec3): real;
    procedure print_value();
  end;

constructor vec3.create(ax, ay, az: real);
begin
  x := ax;
  y := ay;
  z := az;
end;

constructor vec3.copy(const arg_r: vec3);
begin
  x := arg_r.x;
  y := arg_r.y;
  z := arg_r.z;
end;

constructor vec3.zero();
begin
  x := 0;
  y := 0;
  z := 0;
end;

function vec3.sum(const arg_r: vec3): vec3;
begin
  Result.x := x + arg_r.x;
  Result.y := y + arg_r.y;
  Result.z := z + arg_r.z;
end;

function vec3.dot_product(const arg_r: vec3): real;
begin
  Result := (x * arg_r.x) + (y * arg_r.y) + (z * arg_r.z);
end;

procedure vec3.print_value();
begin
  writeln(Format('(%f, %f, %f)', [x, y, z]));
end;

var
  a, b, c: vec3;
begin
  a.create(1, 2, 3);
  a.print_value;

  b.create(1, 1, 10);
  b.print_value;

  c := b.sum(a);
  c.print_value;

  writeln(a.dot_product(b):0:3);

  writeln('OK!');
  readln
end.
