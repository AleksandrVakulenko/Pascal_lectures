// +
// вывод странный, но работает
program task2;
{$APPTYPE CONSOLE}

uses Math;

var
    afterpoint, counter : integer;
    i : longint;
    sum1, sum2, p : double;
    
begin
readln(p);
counter:=0;
sum1:=0;
i:=1;
sum2:=-3;
Write('Сколько знаков после запятой нужно оставить? ');
readln(afterpoint);

while True do begin
    sum1:=sum1+cos(p*i)/power(i,2);
    if sum1 = sum2 then
        counter:=counter+1
    else
        sum2 := sum1;
    if counter = 2 then
        break;
    i:=i+1;
end;

//writeln(ceil(sum1*power(10,afterpoint)),'* 10^(-',afterpoint,')')
writeln(sum1)
end.
