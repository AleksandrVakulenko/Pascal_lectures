// пользователь не обязан задавать правильную n
 //1-2
program Variant1_Zadanie2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var 
    i,n,p: integer;
    sum: real;
begin
    write('p: ');
      readln(p);
    write('n: ');
      readln(n);
    sum := 0;
    for i:=1 to n do
      sum := sum + sin(p/(i*i));
    writeln(sum);
end.
