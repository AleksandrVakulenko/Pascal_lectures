// Утечка памяти на строке 38

Program Project5;
{$APPTYPE CONSOLE}
uses
  SysUtils,
  Math;

const
  Size_N = 190000000;




type
  arr700mb = array [0..Size_N] of integer;




  Array_obj = object
    private
      data: ^arr700mb;
      is_created: boolean;
    public
      constructor create_random();
      destructor del();
  end;




constructor Array_obj.create_random();
var
  i: integer;
begin
  is_created := true;
  new(data);
  for i := 0 to Size_N do
    data^[i] := Random(100);
end;




destructor Array_obj.del();
begin
  if is_created then
  begin
    Dispose(data);
    is_created := false;
  end;
end;




var
  a: Array_obj;



  
begin
  a.create_random;
  a.create_random;
  a.del;
  a.del;
  writeln('OK!');
  readln
end.
