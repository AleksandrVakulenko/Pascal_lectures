Program vec_obj;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

const
	Size_N = 50000;

type
    big_arr = array[0..Size_N] of integer;
	T = big_arr;
	
	node_ptr = ^Node;
    Node = record
        data : T;
		prev, next : node_ptr;
    end;

	list_ptr = ^List;
	List = object
		private
			intro_node_p : node_ptr;
		public
			constructor init(arg : T);
			constructor copy(arg_r : list_ptr);
			destructor del();
			procedure push_back(arg : T);
			procedure push_front(arg : T);
			procedure print();
	end;
	
	
constructor List.init(arg : T);
	begin
		New(intro_node_p);
		intro_node_p^.next := nil;
		intro_node_p^.prev := nil;
		intro_node_p^.data := arg;
	end;


procedure List.push_back(arg : T);
	var
		temp_p : node_ptr;
	begin
		temp_p := intro_node_p;
		while temp_p^.next <> nil do
			temp_p := temp_p^.next;
		New(temp_p^.next);
		temp_p^.next^.prev := temp_p;
		temp_p^.next^.next := nil;
		temp_p^.next^.data := arg;
	end;


procedure List.push_front(arg : T);
	var
		temp_p : node_ptr;
	begin
		New(intro_node_p^.prev);
		intro_node_p^.prev^.prev := nil;
		intro_node_p^.prev^.next := intro_node_p;
		intro_node_p^.prev^.data := arg;
		intro_node_p := intro_node_p^.prev;
	end;


procedure List.print();
	var
		temp_p : node_ptr;
	begin
		temp_p := intro_node_p;
		writeln(temp_p^.data[0]);
		while temp_p^.next <> nil do begin
			temp_p := temp_p^.next;
			writeln(temp_p^.data[0]);
		end;
	end;


destructor List.del();
	var
		temp_p : node_ptr;
	begin
		if intro_node_p = nil then
			exit;
		if intro_node_p^.next = nil then
			Dispose(intro_node_p)
		else begin
		repeat
			temp_p := intro_node_p;
			intro_node_p := intro_node_p^.next;
			//write('Dispose elem with val = ', temp_p^.data[0]);
			//writeln(' Need more? ', intro_node_p <> nil);
			Dispose(temp_p);
		until intro_node_p = nil;
		end;	
	end;


constructor List.copy(arg_r : list_ptr);
	begin
		
	end;
	

function get_random_data() : big_arr;
	var
		temp : big_arr;
		i : integer;
	begin
		for i := 0 to Size_N do
			temp[i] := random(100);
		get_random_data := temp;
	end;
	
	
var
	i : integer;
	a, b : List;
Begin
	a.init(get_random_data());
	for i := 1 to 5*800 do //add 800 Mb of data to list a
		a.push_back(get_random_data());

	a.copy(@a);
	b.copy(@a);
	b.copy(@a);
	b.copy(@a);
	
	a.del(); //clear list a
	b.del(); //clear list a
	
	writeln('OK!')
End.


