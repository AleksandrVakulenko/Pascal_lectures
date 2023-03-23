program new_try;
{$APPTYPE CONSOLE}

uses
SysUtils;

const
    N = 1048576 - 1;

type
	Array_of_int = array[0..N] of integer; // 4 Mb
	I_ptr = ^Array_of_int;

var
	ptr : I_ptr;
	i, j : integer;
	
begin
ptr := nil;
for j := 0 to 400 do begin
    New(ptr);
    writeln(j, ' : ',format('Address: %p', [ptr]));
    for i := 0 to N do begin
        ptr^[i] := i+1;
    end;
end;
readln;
Dispose(ptr);
end.


