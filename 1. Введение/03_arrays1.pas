program arrays_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
var	
	// arr is an array of 11 values of "real" type
	// 10 is not a size, it is a last value number
	arr : array[0..10] of real;
	i, j : integer;

begin
	randomize; //re-init random generator
	
	// array test with "for" loop
	for i := 0 to 10 do begin //"begin" on the end of this line
		arr[i] := random; // code inside with indent of 4 spaces or tab
		writeln('i = ', i, ' arr[i] = ', arr[i]);
	end; // "end" on the same indent as "for" cycle
	
	writeln; //make blank line
	
	// output value formating
	for i := 5 to 8 do begin
		writeln('i: ', i, ' | arr: ', arr[i]:5:3); // print 5 characters (including ".") and 3 characters after "."
	end;
	
	readln; //if you runn this from pascal IDE

end.
