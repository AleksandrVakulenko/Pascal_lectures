// +/-
// не инициализирована переменная sum1
//1 - 2
program Project4;
{$APPTYPE CONSOLE}

uses
    SysUtils;

var
    p,i : integer;
    sum1, sum2 : single;
    
begin
write('Enter p: ');
readln(p);
I := 1;
sum2 := sin(p/(i*i));
repeat
    sum1 := sin(p/(i*i)) + sum1;
    sum2 := sin(p/((i+1)*(i+1))) + sum2;
    I := I + 1;
    writeln(sum1);
until sum1 = sum2;

writeln('The answer is ', sum1);
readln;
end.
