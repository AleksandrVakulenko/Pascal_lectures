program pointers;
{$APPTYPE CONSOLE}

uses
	SysUtils;

var
    r : real;
    rp : ^real;
    i : integer;
    ip : ^integer;
    
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
    
    //ip := @r;
    //writeln(ip^);
    
    //ip := nil;
    //writeln(ip^);
    
end.







