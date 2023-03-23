//3-3
program VectorProduct;

type
  Vector = record
    x, y, z: real;
  end;

function ScalarProduct(a, b: Vector): real;
begin
  ScalarProduct := a.x * b.x + a.y * b.y + a.z * b.z;
end;

var
  v1, v2: Vector;
  sp: real;

begin
  v1.x := 1;
  v1.y := 2;
  v1.z := 3;
  
  v2.x := 4;
  v2.y := 5;
  v2.z := 6;
  
  sp := ScalarProduct(v1, v2);
  
  writeln('—кал€рное произведение векторов: ', sp);
end.