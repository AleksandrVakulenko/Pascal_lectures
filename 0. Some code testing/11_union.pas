program union_test;
{$APPTYPE CONSOLE}

uses
	SysUtils;


type
	Union = record
		case Boolean of
		True:(
			A : Longint;
		);
		False:(
			//B : Single;
			B : array[0..3] of Byte;
		);
	end;


var
	un : Union;
	i : Longint;
	j : integer;

begin

	un.A := 20000;
	//un.B := -1;
	
	writeln(un.A);
	writeln(un.B[0], ' ', un.B[1], ' ', un.B[2], ' ', un.B[3]);

	
	writeln(sizeof(i));
	writeln(sizeof(j));

end.
