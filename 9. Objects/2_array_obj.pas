Program Example;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

type
    arr1500mb = array [0..393216000] of integer;
    
    Array_obj = object
    private
        //data : ^integer;
        data : ^arr1500mb;
    public
        constructor create(init_v : integer);
		destructor del();
        function get_sum() : integer;
    end;


constructor Array_obj.create(init_v : integer);
    var
        i : integer;
    begin
        New(data);
        for i := 0 to 393216000 do
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
        for i := 0 to 393216000 do
            s := s + data^[i];
        get_sum := s;
    end;


var
    c, c2 : Array_obj;
    
Begin
    c.create(8);
    writeln(c.get_sum);
    
    c2 := c;
    writeln(c2.get_sum);
End.






