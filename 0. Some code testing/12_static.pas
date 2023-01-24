Program Example;
{$APPTYPE CONSOLE}

//https://wiki.freepascal.org/Absolute

Var
	Static1 : Integer;

Procedure DoSomething(X : Integer) ;
	Var
		Y  : Integer absolute Static1;
	Begin
		Y := Y + X;
		writeln(Y);
	End;
	
Var
	i : Integer;

Begin
	Static1 := 0;
	DoSomething(2); {Y = 2}
	DoSomething(2); {Y = 4}
	DoSomething(3); {Y = 7}
	
	i := 0;
	writeln(i);
End.

