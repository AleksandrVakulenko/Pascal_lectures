//+
//2-3
type
  TVector = record
  x: Real;
  y: Real;
  end;
function ScalarProduct(v1, v2: TVector): Real;
begin
  ScalarProduct := v1.x * v2.x + v1.y * v2.y;
end;
var
  vec1, vec2: TVector;
begin
  vec1.x := 1;
  vec1.y := 2;
  vec2.x := 3;
  vec2.y := 0;
  writeln('Cкалярное произведение двух векторов ', ScalarProduct(vec1, vec2));
end.