//5-4
var
    n, p, per: integer;
    a: array of integer;        
begin
write('исходный массив: ');
    n:=random(100)+1;
    setlength(a, n);                
    for i:integer := 0 to n - 1 do begin
        a[i] := random(1000);            
        write(a[i],' ');                    
    end;
    while per<>-1 do begin
    per:=0;
     for i:integer := 0 to n-2 do
     if a[i+1]>a[i] then begin{для того чтобы массив сортировался по возрастанию нужно поменять > на <}
        p:=a[i];
        a[i]:=a[i+1];
        a[i+1]:=p;
        per:=per+1;
     end;
    if per=0 then per:=-1;
    end;
    writeln;
    write('массив отсортированный по убыванию: ');
    for i:integer := 0 to n - 1 do
        write(a[i],' ');                    
end.