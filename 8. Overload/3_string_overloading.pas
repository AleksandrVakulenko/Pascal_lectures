program strings;
{$APPTYPE CONSOLE}

uses
	SysUtils;
    

function num2str(arg : integer) : string; overload;
    begin
        num2str := format('%u', [arg]);
    end;
    
    
function num2str(arg : real) : string; overload;
    begin
        num2str := format('%e', [arg]);
    end;


function num2str(arg : real; N : integer) : string; overload;
    begin
        num2str := format('%.' + num2str(N) + 'f', [arg]);
    end;

	
var
	str1, f_string, i_str : string;
    i : integer;
    r : real;

begin
    r := 12.3456789;
    i := 114;
    writeln(num2str(i));  
    writeln(num2str(r));
    writeln(num2str(r, 2));
    writeln(num2str(r, 4));
end.






