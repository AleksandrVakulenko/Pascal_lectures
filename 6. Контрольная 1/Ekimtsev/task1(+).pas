//5-1
var
  n: integer;
  a: array of integer;    
begin
  n:=random(100);
  setlength(a, n);        
  for i:integer := 0 to n - 1 do     
  begin
    a[i] := random(1000);      
    write(a[i],' ');          
  end;
end.