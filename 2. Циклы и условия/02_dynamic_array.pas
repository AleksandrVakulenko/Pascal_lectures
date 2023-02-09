program array_test;
{$APPTYPE CONSOLE}


uses
	SysUtils;
	
var
	A : array of integer;
	i, N : integer;

begin

write('N = ');
readln(N);

setlength(A, N);


for i := 0 to high(A) do begin
	A[i] := random(100);
	if A[i] > 50 then begin
		writeln(i, ' : ', A[i], ' ');
	end	else begin
		writeln('---');
	end;
end;

writeln;


repeat
	i := random(100);
	writeln(i);
until i > 95;

writeln;

i := 0;
while i < 10 do begin
	i := i + 1;
	writeln(i);
end;



end.

