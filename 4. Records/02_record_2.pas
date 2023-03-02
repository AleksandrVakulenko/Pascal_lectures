program records;
{$APPTYPE CONSOLE}

uses
	SysUtils;
	
Type
	Person = record
		name : string;
		ID : integer;
	end;
	
	Group_of_two = record
		first, second : Person;
	end;

procedure print(arg : Person);
	begin
		writeln;
		writeln('Person name:');
		writeln(arg.name);
		writeln('Person ID:');
		writeln(arg.ID);
		writeln;
	end;

procedure print_group(arg : Group_of_two);
	begin
		writeln;
		writeln('First:');
		print(arg.first);
		writeln('Second:');
		print(arg.second);
		writeln;
	end;

var
	a, b : Person;
	g : Group_of_two;
begin

	a.name := 'John';
	a.ID := 46;
	
	b := a;
	b.ID := 2;
	
	g.first := a;
	g.second := b;
	
	print_group(g);
	
	//print(a);
	//print(b);

end.




