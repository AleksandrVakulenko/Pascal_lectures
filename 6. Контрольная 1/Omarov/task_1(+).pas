//
//3-1
Program ArithmeticProgression;
{$APPTYPE CONSOLE}

var
  a, d, n, i, min: integer;
begin
  write('������� ������ ���� ���������� (a): ');
  readln(a);
  write('������� �������� ���������� (d): ');
  readln(d);
  write('������� ���������� ������ ���������� (n): ');
  readln(n);
  
  writeln('����� ����������:');
  min := a;
  for i := 1 to n do begin
    writeln(a);
    if a < min then
      min := a;
    a := a + d;
  end;
  
  writeln('������� ���� ����������: ', min);
end.