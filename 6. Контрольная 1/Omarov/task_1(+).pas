//
//3-1
Program ArithmeticProgression;
{$APPTYPE CONSOLE}

var
  a, d, n, i, min: integer;
begin
  write('¬ведите первый член прогрессии (a): ');
  readln(a);
  write('¬ведите разность прогрессии (d): ');
  readln(d);
  write('¬ведите количество членов прогрессии (n): ');
  readln(n);
  
  writeln('„лены прогрессии:');
  min := a;
  for i := 1 to n do begin
    writeln(a);
    if a < min then
      min := a;
    a := a + d;
  end;
  
  writeln('ћеньший член прогрессии: ', min);
end.