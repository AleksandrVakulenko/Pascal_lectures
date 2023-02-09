program array_test;
{$APPTYPE CONSOLE}


uses
	SysUtils;
	
var
	A, B : array[0..3] of integer;
	i : integer;

begin

A[0] := 11;
A[1] := 12;
A[2] := 13;
A[3] := 14;

B[2] := -100;

for i := 0 to 500 do begin
	//A[i] := random(100);
	write(A[i], ' ');
end;

writeln;
writeln(B[2]);

end.



