program dynamic_array;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
var
	arr : array of byte;
	i,j,k : integer;

begin

setlength(arr, 10);

for i:=0 to high(arr) do begin
	arr[i] := i+50;
end;

// UNDEFINED BEHAVIOR
for i:=0 to high(arr)+500000 do begin
	//write(i);
	//write(' : ');
	//writeln(chr(arr[i]));
	if arr[i] <> 0 then
		write(chr(arr[i]));
end;
writeln;



arr := nil;
end.

