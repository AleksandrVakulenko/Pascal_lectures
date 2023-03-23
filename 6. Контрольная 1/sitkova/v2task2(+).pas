//2-2
program v2task2;

{$APPTYPE CONSOLE}
uses
  Math;

var
    afterpoint, p, counter : integer;
    i : longint;
    sum1, sum2 : double;
begin
readln(p);
counter:=0;
sum1:=0;
i:=1;
sum2:=-3;
while True do begin
    sum1:=sum1+cos(p*i)/power(i,2);
    if(sum1=sum2) then
        counter:=counter+1
    else
        sum2:=sum1;
    if(counter=2) then
        break;
    i:=i+1;
end;
writeln(sum1);
readln(sum1); readln(sum1);
end.