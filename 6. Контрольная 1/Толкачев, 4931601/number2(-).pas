// не работает
//sum не инициализирована
// i в функции mem не инициализирована
program variant1;
//Вариант 1, задание 2, 
{$APPTYPE CONSOLE}

uses
    math;

function mem(sum, int, sjn: real) : integer;
    var   
        j:integer;
        p:real;   
    begin  
        int := p/Power(j,2);
        //writeln(j);
        sjn := sin(int);
        if sjn >= 1 then
            writeln('---')
        else begin 
            sum := sum + sjn;
            //writeln(sum);
      end;
end;

var 
    p, sum, int, sjn : real;
    i, number : integer; 
 
begin
number := 100000;
i := 0;
writeln('Введите значение p');
readln(p);
writeln;
  
repeat 
    i := i + 1;
    mem(sum, int, sjn);
until number < i;
    
end.