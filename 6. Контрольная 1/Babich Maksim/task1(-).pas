// -
// не работает с убывающей
// 2-1
Program ArithmeticProgression;
{$APPTYPE CONSOLE}
var
 a, b, n, i, min,max: integer;
begin
 write('Введите первый член прогрессии (a): ');
 readln(a);
 write('Введите разность прогрессии (b): ');
 readln(b);
 write('Введите количество членов прогрессии (n): ');
 readln(n);
  
 writeln('Члены прогрессии:');
 min := a;
 for i := 1 to n do begin
 writeln(a);
 if a < min then
 min := a;
 a := a + b;
 max := a-b;
  end;
  writeln('Наибольший член прогрессии: ', max);
end.