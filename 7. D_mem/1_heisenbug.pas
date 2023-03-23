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
    i, number : integer; 
 
begin
number := 10000;
i := 0;
repeat 
    i := i + 1;
    foo;
until number < i;
    
    
    //writeln(format('Address: %p', [@i]));
end.