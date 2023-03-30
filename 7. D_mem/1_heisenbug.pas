program variant1;
{$APPTYPE CONSOLE}

uses
    SysUtils; 

procedure foo();
    var   
        jj : integer;
    begin
        writeln('jj = ', jj);
    end;

var
    i, N : integer; 
begin
N := 1000;
i := 0;
repeat 
    i := i + 1;
    foo;
until N < i;
  
//writeln(format('Address: %p', [@i]));
end.