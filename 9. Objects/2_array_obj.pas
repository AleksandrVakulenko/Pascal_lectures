Program Example;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

type
    arr1500mb = array [0..193216000] of integer;
    
    Array_obj = object
    private
        data : ^arr1500mb;
    public
        constructor create(init_v : integer); overload;
		constructor create(arg_from : Array_obj); overload;
		destructor del();
        function get_sum() : integer;
		procedure copy_from(arg_from: Array_obj);
    end;
	

constructor Array_obj.create(arg_from : Array_obj);
	var
		i : integer;
	begin
		New(data);
		for i := 0 to 193216000 do
			data^[i] := arg_from.data^[i];
	end;


procedure Array_obj.copy_from(arg_from: Array_obj);
	var
	 i : integer;
	begin
		if data = nil then begin
			New(data);
			writeln('need new()');
		end;
		for i := 0 to 193216000 do
			data^[i] := arg_from.data^[i];
	end;

constructor Array_obj.create(init_v : integer);
    var
        i : integer;
    begin
        New(data);
        for i := 0 to 193216000 do
            data^[i] := init_v;
		writeln('CREATED');
    end;


destructor Array_obj.del();
	begin
        Dispose(data);
		writeln('DELETED');
	end;


function Array_obj.get_sum() : integer;
    var
        i, s : integer;
    begin
        s := 0;
        for i := 0 to 193216000 do
            s := s + data^[i];
        get_sum := s;
    end;


var
    c, c2 : Array_obj;
	
Begin
    c.create(8);
    writeln(c.get_sum);
    
	c2.create(c);
	c.del;
    writeln(c2.get_sum);

End.






