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
	i: integer;
	
begin
New(ptr);

writeln;
writeln(format('Address: %p', [ptr]));
writeln;

for i := 0 to N do begin
    ptr^[i] := i*3;
end;
    
Dispose(ptr);

end.