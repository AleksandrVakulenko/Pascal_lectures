program pointers;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	Int_D = array of integer;
	Ptr_to_Int_D = ^Int_D;
	
procedure array_init();
	var
		arr : array of real;
	begin
		setlength(arr, 134217728);
		writeln('CREATED');
		readln;
	end;
	
function array_inc(arg : Int_D) : Ptr_to_Int_D;
	var
		local_arr : Int_D;
		i : integer;
	begin
		setlength(local_arr, Length(arg));
		for i:=0 to high(arg) do begin
			local_arr[i] := arg[i]+1;
		end;
		array_inc := @local_arr;
	end;
	

function array_inc_2(arg : Int_D) : Int_D;
	var
		local_arr : Int_D;
		i : integer;
	begin
		setlength(local_arr, Length(arg));
		for i:=0 to high(arg) do begin
			local_arr[i] := arg[i]+1;
		end;
		array_inc_2 := local_arr;
	end;
	
var
	arr : Int_D;
	value : integer;
	ptr: Ptr_to_Int_D;
	i : integer;

begin
	array_init;
	randomize;
	setlength(arr, 10);
	
	for i:=0 to high(arr) do begin
		arr[i] := random(100);
		writeln(arr[i]);
	end;

	arr := array_inc_2(arr);
	
	writeln;
	for i:=0 to high(arr) do begin
		writeln(arr[i]);
	end;

	arr := nil;
end.