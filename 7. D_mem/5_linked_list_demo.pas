program linked_list;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	Node_p = ^Node;
	
	Node = record
		value : integer;
		next : Node_p;
	end;
	
	
procedure add_after(prev_node : Node_p; val : integer);
	var
		temp_p : Node_p;
	begin
		New(temp_p);
		temp_p^.value := val;
		temp_p^.next := prev_node^.next;
		prev_node^.next := temp_p;
	end;


procedure push_back(intro : Node_p; val : integer);
	begin
		while intro^.next <> nil do
			intro := intro^.next;
		add_after(intro, val);
	end;


procedure push_front(var intro : Node_p; val : integer);
	var
		temp_p : Node_p;
	begin
		New(temp_p);
		temp_p^.next := intro;
		temp_p^.value := val;
		intro := temp_p;
	end;


procedure print_list(intro : Node_p);
	begin
		writeln(intro^.value);
		while intro^.next <> nil do begin
			intro := intro^.next;
			writeln(intro^.value);
		end;
	end;


procedure erase_all(intro : Node_p);
	var 
		temp : Node_p;
	begin
		if intro^.next = nil then
			Dispose(intro)
		else begin
		repeat
			temp := intro;
			intro := intro^.next;
			write('Dispose elem with val = ', temp^.value);
			writeln(' Need more? ', intro <>nil);
			Dispose(temp);
		until intro = nil;
		end;	
	end;




	
var
	intro : Node_p;
	
begin
	intro := nil;
	New(intro);
	intro^.next := nil;
	intro^.value := 1;
	
	push_back(intro, 2);
	push_back(intro, 3);
	push_back(intro, 4);
	push_front(intro, 0);
	push_front(intro, -1);
	
	
	//print_list(intro);
	//writeln;
	//erase_all(intro);
	
	//writeln;
	//print_list(intro);
end.
