program merge_sort;
{$APPTYPE CONSOLE}

uses
	SysUtils;

function test_sort(input_array: array of real) : Boolean;
var
	i, flag : integer;
begin
	flag := 0;
	for i := 0 to Length(input_array)-2 do begin
		if input_array[i] > input_array[i+1] then
			flag := 1;
	end;
	test_sort := flag = 0;
end;


procedure merge_s(var input_array : array of real);
var
	size_input, size_left, size_right : integer;
	left_array : array of real;
	right_array : array of real;
	i, j, k : integer;
begin
	size_input := Length(input_array);
	//writeln(size_input);
	
	if size_input > 1 then	begin
		size_left := size_input div 2;
		size_right := size_input - size_left;
		
		//writeln(size_input);
		//writeln(size_left);
		//writeln(size_right);
		
		// Copy data to left and right arrays;
		setlength(left_array, size_left);
		setlength(right_array, size_right);
		for i := 0 to size_left - 1 do begin
			left_array[i] := input_array[i];
			//writeln(left_array[i] : 5:0);
		end;
		//writeln;
		for i := 0 to size_right - 1 do begin
			right_array[i] := input_array[i + size_left];
			//writeln(right_array[i] : 5:0);
		end;
		
		// sort both arrays
		merge_s(left_array);
		merge_s(right_array);
		
		// Merge arrays back to input array
		i := 0;
		j := 0;
		for k := 0 to size_input-1 do begin
			if (i < size_left) and (j < size_right) then begin
				if left_array[i] <= right_array[j] then begin
					input_array[k] := left_array[i];
					i := i + 1;
				end
				else begin
					input_array[k] := right_array[j];
					j := j + 1;
				end
			end
			else begin
				if i < size_left then begin
					input_array[k] := left_array[i];
					i := i + 1;
				end
				else begin
					input_array[k] := right_array[j];
					j := j + 1;
				end
			end
		end;
		left_array := nil;
		right_array := nil;
	end;

end;


var
  init_array : array of real;
  i, n : integer;

begin
	randomize;
	n := 11;
	setlength(init_array, n);
	for i := 0 to n-1 do begin
		init_array[i] := random(100);
		writeln(init_array[i] : 5:0);
	end;
	writeln;
	
	writeln(test_sort(init_array));
	merge_s(init_array);
	writeln(test_sort(init_array));
	
	
	for i := 0 to n-1 do begin
		writeln(init_array[i] :5:0);
	end;
	writeln;
	//readln;
end.
