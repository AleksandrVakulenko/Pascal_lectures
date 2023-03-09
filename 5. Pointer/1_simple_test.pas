program pointers;
{$APPTYPE CONSOLE}

uses
	SysUtils;

var
    r : real;
    rp : ^real;
    i : int64;
    ip : ^int64;
    
begin
    r := 24.51;
    rp := @r;
    i := 123;
    ip := @i;
    
    writeln(r :0:3);
    writeln(rp^ :0:3);
    writeln(i);
    writeln(ip^);
    writeln;    
    
	writeln(format('Address: %p', [ip]));
	writeln(format('Address: %p', [rp]));
	
    //ip := @r;
    //writeln(ip^);
	
	//writeln(sizeof(i));
	//writeln(sizeof(ip));
	//writeln(sizeof(r));
	//writeln(sizeof(rp));
	
    //ip := nil;
    //writeln(ip^);
    
end.







