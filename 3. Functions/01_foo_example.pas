program foo_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;


var
	val_g : real;


function foo_1(i,j:integer; x,y:real) : real;
	var //local variables of this function
		output : real;
	begin
		writeln;
		writeln('>>> "foo_1" function is called >>>');
		output := i + j + x/y;
		//function return value must be placed in function name;
		foo_1 := output;
	end;


// where is no output value in procedures
procedure print_vec(x,y:real);
	begin
		writeln;
		writeln('>>> "print_vec" procedure is called >>>');
		writeln('x = ', x:5:3, ' y = ', y:5:3);
		writeln;
	end;


procedure print_blind();
	begin
		writeln;
		writeln('>>> "print_blind" procedure is called >>>');
		writeln('Actual value of val_g is : ', val_g:5:3);
		writeln;
	end;



procedure proc_inc(var x : real);
	begin
		x := x + 1;
		writeln('>>> "proc_inc" procedure is called >>>');
	end;


var
	val_loc : real;
	x,y : real;

begin
	val_g := 12.33;
	print_blind;

	// call with constants
	print_vec(-3, 25);
	
	// call with variables
	x := 0;
	y := 5;
	print_vec(x, y);

	// functions returns data
	val_loc := foo_1(1, 2, 4.2, 2.0);
	writeln('Actual value of val_loc is : ', val_loc:5:3);
	writeln;
	
	writeln('x = ', x:5:3);
	proc_inc(x);
	writeln('x = ', x:5:3);
	writeln;
	
end.












