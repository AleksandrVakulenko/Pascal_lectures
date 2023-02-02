program arrays_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
var	
	// arr is an array of 11 values of "real" type
	arr1 : array[0..10] of real;
	
	// dynamic array of real
	// we dont know how many elements we will need
	arr2 : array of real;
	
	i, N : integer;

begin
	
	write('Enter number of elements: ');
	readln(N);
	
	setlength(arr2, N); //now we have arr2 as an array of N elements
	
	// last element is not an N, it is N-1 !!!
	// N is a size of array, including 0th element.
	for i := 0 to N-1 do begin
		arr2[i] := random;
		writeln('i = ', i, ' arr[i] = ', arr2[i]:5:6);
	end;
	
	
	// uncomment readln if you run this code from IDE;
	//readln;
end.
