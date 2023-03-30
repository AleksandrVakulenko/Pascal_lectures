Program Example;
{$APPTYPE CONSOLE}

uses
    SysUtils;


type
	arrd = array of integer;
    arrdp = ^arrd;


Var
    ptr : arrdp;
	i : Integer;

Begin
    
    New(ptr);
    writeln(format('Address: %p', [ptr]));
    setlength(ptr^, 100);
    writeln(format('Address: %p', [ptr]));
    setlength(ptr^, 200);
    writeln(format('Address: %p', [ptr]));
    Dispose(ptr);
    writeln(format('Address: %p', [ptr]));

End.

