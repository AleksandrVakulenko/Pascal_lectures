// - 
// это не функция
program task3;
uses Math;
Type
Vector = array [1..2] of integer;
Matrix= array [1..2] of vector;
Var mas: matrix;
begin
readln(mas[1][1],mas[1][2],mas[2][1],mas[2][2]);
 writeln(mas[1][1]*mas[2][1] + mas[1][2] * mas[2][2]);
end.
