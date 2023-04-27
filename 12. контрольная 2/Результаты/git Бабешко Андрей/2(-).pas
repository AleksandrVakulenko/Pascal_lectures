// Утечка памяти на строке 31


Program array_obj;
{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

const
  Size_N = 190000000;

type
  arr700mb = array [0..Size_N] of integer;

  Array_obj = object
  private
    data: ^arr700mb;
  public
    constructor create_random();
    destructor del();
  end;

var
  a: Array_obj;

constructor Array_obj.create_random;
var
  i: integer;
begin
  New(data);
  for i := 0 to Size_N do
    data^[i] := Random(MaxInt);
end;

destructor Array_obj.del;
begin
  Dispose(data);
end;

begin
  a.create_random;
  a.create_random;

  a.del;
  a.del;

  writeln('OK!');
  readln;
end.
