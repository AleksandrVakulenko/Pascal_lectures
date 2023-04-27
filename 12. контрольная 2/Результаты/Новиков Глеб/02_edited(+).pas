Program vec_obj;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;

const
	Size_N = 190000000;

type
    arr700mb = array [0..Size_N] of integer;
    
    Array_obj = object
		private
			data : ^arr700mb;
		public
			constructor create_random();
			destructor del();
    end;

constructor Array_obj.create_random();
var i : integer;
begin
    if data = nil then
    New(data)
    else writeln('The object has been created before, new parameters assigned');
    for i:=0 to Size_N do begin
        data^[i]:=random(100);
    end;
end;

destructor Array_obj.del(); begin
    if data <> nil then begin
        Dispose(data);
        data := nil end
    else begin
        writeln('The object has been deleted already.');
    end;
end;


var
	a : Array_obj;
Begin
	a.create_random;
  a.create_random;

	a.del;
	a.del;

	writeln('OK!');
  readln;
End.