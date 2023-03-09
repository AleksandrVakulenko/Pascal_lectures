program pointers;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	Node_ptr = ^Node;
	
	Node = record
		data : integer;
		ptr : Node_ptr;
	end;
	
	arr_of_node = array of Node;
	
	
procedure set_size(var arg:arr_of_node; i : integer);
	begin
		setlength(arg, i);
	end;
	
var
	a : Node;
	arr : arr_of_node;
    
begin
	a.ptr := nil;
	a.data := 11;
    set_size(arr, 4);

end.