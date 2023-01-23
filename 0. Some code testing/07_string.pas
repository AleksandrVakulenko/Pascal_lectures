program strings;
{$APPTYPE CONSOLE}

uses
	SysUtils;

var
	i,k : integer;
	str : string;

begin
	str := 'nyan';
	i := 0;
	
	for i := 1 to length(str) do begin
		write(str[i]);
	end;

	k := 10;
	for i:=0 to k do begin
		writeln(i);
		k := k + 1;
		
		if i = 50 then
		break;
	end;
	

end.