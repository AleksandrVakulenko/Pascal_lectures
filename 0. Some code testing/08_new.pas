program new_try;
{$APPTYPE CONSOLE}

uses
SysUtils;

type
	Array_of_int = array[0..1048575] of integer;
	I_ptr = ^Array_of_int;

var
	ptr : I_ptr;
	n, i, j : integer;
	
begin
	n := 131072;
	
	for j := 0 to 500 do begin
		
		//writeln(format('Address: %p',[ptr]));
		New(ptr);
		writeln(j, ' : ',format('Address: %p', [ptr]));
		for i := 0 to 1023 do begin
			ptr^[i] := i;
			//writeln(ptr^[i]);
		end;
		
		
		
	end;
	
	Dispose(ptr);
	//for i := 0 to n do begin
	//	New(ptr);
	//end;


end.