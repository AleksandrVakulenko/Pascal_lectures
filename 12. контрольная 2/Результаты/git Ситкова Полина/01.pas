// это вторая задача D:
// и она все равно не работает
// хотя попытка исправить main выглядит как понимание проблемы

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
var
  i : integer;
begin
  new(data);
  for i := 0 to Size_N do
    data^[i] := RandomRange(-1000, 1000);
end;

destructor Array_obj.del();
begin
  dispose(data);
end;

var
  a : Array_obj;
Begin
  a.create_random;
  a.del;
  
  a.create_random;
  a.del;
  
  writeln('OK!')
End.
