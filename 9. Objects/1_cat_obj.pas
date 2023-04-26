Program Example;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

type
    Cat = object
    private
        data : integer;
    public
        constructor create(init_v : integer); overload;
        constructor create(); overload;
		destructor del();
        procedure set_data(arg : integer);
		function get_data() : integer;
        procedure do_nyan();
    end;


constructor Cat.create(init_v : integer);
    begin
        data := init_v;
		writeln('CAT CREATED');
    end;


constructor Cat.create();
    begin
        data := 42;
		writeln('CAT CREATED 42');
    end;


destructor Cat.del();
	begin
		writeln('BYE MEOW MEOW !');
	end;


procedure Cat.set_data(arg : integer);
	begin
		data := arg;
	end;


function Cat.get_data() : integer;
	begin
		get_data := data;
	end;


procedure Cat.do_nyan();
	begin
		writeln('NYAN!');
	end;
    

procedure foo();
    var
        temp : Cat;
    begin
        temp.create(144);
        writeln(temp.get_data);
    end;

    
Type
	cat_p = ^Cat;
	
var
    c, c2 : Cat;
    ptr_c : cat_p;
	
Begin
    
    foo;
    
    writeln;
    
    c.create(8);
	c.set_data(9);
    c.do_nyan;
	writeln('origin: ', c.get_data);
    c2 := c;
    writeln('copy: ', c2.get_data);
	c.del;
    
    writeln;

	New(ptr_c, create(8));
	writeln(ptr_c^.get_data);
	dispose(ptr_c, del);
	

End.






