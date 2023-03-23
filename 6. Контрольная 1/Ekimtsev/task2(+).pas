//5-2
var
    n, summ: integer;
    a: array of integer;

function srznach(var summ, n: integer):real; 
    begin
        for l:integer :=0 to n-1 do
            summ:=summ+a[l];
        srznach:=summ/n;
    end;
begin
    n := random(100);
    setlength(a, n);                
    for i: integer := 0 to n - 1 do begin
        a[i] := random(1000);            
        write(a[i],' ');
    end;
    writeln;
    writeln('среднее значение=', srznach(summ, n));
end.

