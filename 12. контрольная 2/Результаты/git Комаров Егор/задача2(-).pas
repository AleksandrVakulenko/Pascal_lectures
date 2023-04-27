// под DCC32 v18.0 не запускается
// необоснованно изменена структура класса


{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


Program vec_obj;

uses
    SysUtils, Math;

const
	Size_N = 190000000;
var
i:Longint;
type
//    arr700mb = array [1..Size_N] of integer;
    
    Array_obj = object
		private
		arr700mb:array [0..Size_N] of integer;
			//data : arr700mb;
		public
			constructor create_random();
			destructor del();
    end;
    
    constructor Array_obj.create_random();
    Begin
    for i:=1 to 190000000 do
        arr700mb[i]:=random(100);
    end;
    
    destructor Array_obj.del();
    Begin
    writeln('объект удалён')
    end;


var
	a : Array_obj;
Begin
	a.create_random;
	a.create_random;
	
	a.del;
	a.del;
	
	writeln('OK!')
End.
