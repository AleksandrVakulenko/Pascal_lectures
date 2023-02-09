program array_test;
{$APPTYPE CONSOLE}


uses
	SysUtils;
	
var
	A : array[0..3] of integer;
	i : integer;

begin

A[0] := 11;
A[1] := 12;
A[2] := 13;
A[3] := 14;


for i := 0 to 3 do begin
	A[i] := random(100);
	write(A[i], ' ');
end;



end.



