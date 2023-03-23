// -
// не работает
// переменная q в функции mem не инициализирована
program variant1;
{$APPTYPE CONSOLE}
//Вариант 1, задание 1

uses
    math;

function mem(a:real; i,b: real) : integer;
    var q,b1 : integer;
    begin    
        a := Power(q,(i-1));
        b := b1 * a;            
    end;
    
 var 
    b,a,b1: real;
    q,i,number: integer;    
    
begin
    writeln('Введите значения первого члена геометрической прогрессии b и знаменатель q');
    readln(b1, q);
 
    i := 0;
    writeln('Введите конечный номер числовой последовательности');
    readln(number);
    writeln;
    repeat 
        i:=i+1;
        mem(b,a,i);
        writeln ('i = ', i, ' b = ', b);
        writeln; 
    until number < i;
end.