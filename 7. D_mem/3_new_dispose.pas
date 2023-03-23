program new_try;
{$APPTYPE CONSOLE}

uses
SysUtils;
    
type
	int_ptr = ^integer;

var
	ptr_arr : array of int_ptr;
	i, N: integer;
	
begin
readln(N);

setlength(ptr_arr, N);

for i := 0 to N do begin
	New(ptr_arr[i]);
	
	//Dispose(ptr_arr[i]);
end;
writeln(format('Address: %p', [ptr_arr[N]]));

end.