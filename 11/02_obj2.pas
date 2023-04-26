Program vec_obj;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

type
	T = integer;
	
	node_ptr = ^Node;
	
    Node = record
        data : T;
		prev, next : node_ptr;
    end;

	List = object
	private
		intro_node_p : node_ptr;
		current_node_p : node_ptr;
		size : integer;
	public
        constructor init();
		destructor del();
		procedure add_after(arg : T); overload;
		procedure add_after(pos : integer; arg : T); overload;
		procedure push_back(arg : T);
		procedure push_front(arg : T);
		procedure step_fwd();
		procedure sted_bwd();
		procedure set_position(pos : integer);
		function get_value() : T; overload;
		function get_value(pos : integer) : T; overload;
	end;
	
	
	
	
	
var
	a : List;
	
Begin

	

End.






