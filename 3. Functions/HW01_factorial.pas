program test;
{$APPTYPE CONSOLE}

uses
	SysUtils;

type
	long_value = array of byte;


function create_by_int(b : integer) : long_value;
	var
		output : long_value;
		i : integer;
		digit : byte;
	begin
		if b = 0 then begin
			setlength(output, 1);
			output[0] := 0;
		end;
		while b <> 0 do begin
			setlength(output, length(output)+1);
			output[high(output)] := b mod 10;
			b := b div 10;
		end;
		create_by_int := output;
	end;


procedure print(arr : long_value);
	var
		i : integer;
	begin
		for i:=0 to high(arr) do begin
			write(arr[high(arr)-i]);
		end;
		writeln;
	end;


procedure trim_long_value(var arr : long_value);
	var
		i : integer;
	begin
		i := high(arr);
		while (arr[i] = 0) and (i >= 0) do //FIXME: wrong order
			i := i - 1;
		setlength(arr, i+1);
	end;


function long_sum_notrim(A, B : long_value) : long_value;
	var
		output : long_value;
		carry :  byte;
		i : integer;
	begin
		setlength(output, length(A) + length(B)); //FIXME: wrong length
		setlength(A, length(output));
		setlength(B, length(output));
		
		carry := 0;
		for i := 0 to high(output) do begin
			output[i] := A[i] + B[i] + carry;
			if output[i] >= 10 then begin
				output[i] := output[i] - 10;
				carry := 1;
			end
			else
				carry := 0;
		end;
		long_sum_notrim := output;
	end;


function long_sum(A, B : long_value) : long_value;
	var
		output : long_value;
	begin
		output := long_sum_notrim(A, B);
		trim_long_value(output);
		long_sum := output;
	end;


function shift_left(arr : long_value; i : word) : long_value;
	var 
		output : long_value;
		j : integer;
	begin
		setlength(output, length(arr) + i);
		for j := 0 to i-1 do begin
			output[i] := 0;
		end;
		for j:=0 to high(arr) do begin
			output[j+i] := arr[j];
		end;
		shift_left := output;
	end;


function long_mult_by_int(A : long_value; b : byte) : long_value;
	var
		output : long_value;
		i : integer;
		temp, carry : byte;
	begin
		setlength(output, length(A)+1);
		
		carry := 0;
		for i := 0 to high(A) do begin
			temp := A[i]*b + carry;
			carry := temp div 10;
			output[i] := temp mod 10;
		end;
		output[high(output)] := carry;
		trim_long_value(output);
		long_mult_by_int := output;
	end;


function long_mult(A, B : long_value) : long_value;
	var
		output, temp : long_value;
		i : integer;
	begin
		setlength(output, length(A) + length(B));
		
		for i:=0 to high(B) do begin
			temp := long_mult_by_int(A, B[i]);
			temp := shift_left(temp, i);
			output := long_sum_notrim(output, temp);
		end;
		trim_long_value(output);
		long_mult := output;
	end;


var
	a, b, c : long_value;
	one, output, next : long_value;
	N, i : integer;

begin
// main
//{
write('N = ');
readln(N);

one := create_by_int(1);
output := one;
for i:=1 to N do begin
	writeln(i/N*100:6:2, '%');
	next := long_sum(next, one);
	output := long_mult(output, next);
end;
print(output);
//}


// test
 { 
	writeln;
	writeln('create by it a, b');
	a := create_by_int(10002);
	b := create_by_int(90419);
	print(a);
	print(b);
	writeln;
	
	writeln('Sum c = a + b');
	c := long_sum(a, b);
	print(a);
	print(b);
	print(c);
	writeln;

	writeln('shift left c << 5');
	C := shift_left(c, 5);
	print(c);
	writeln;
	
	writeln('long_mult_by_int b*2');
	a := long_mult_by_int(b, 2);
	print(b);
	print(a);
	writeln;
	
	writeln('long_mult a*b');
	c := long_mult(a, b);
	print(a);
	print(b);
	print(c);
	
//}
end.











