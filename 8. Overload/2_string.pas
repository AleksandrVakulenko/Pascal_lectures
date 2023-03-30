program strings;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
var
	str1 : string = 'Hello world!';
    str2 : string = '12345';
    str3 : string;
    i : integer;
    r : real;

begin
    writeln(str1);
    writeln(str2);
    writeln(str3);
    
    
    str3 := str1 + str2;
    writeln(str3);
    
    r := 12.234253;
    str3 := format('Value of r = %.3f; %.4f', [r, 2.0]);
    writeln(str3);
    
    str(r, str2);
    writeln(str2);
	
	for i := 1 to length(str1) do begin
		writeln(str1[i]);
	end;
	//writeln;
end.






