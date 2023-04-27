// Утечка памяти на строке 32 при повторном вызове конструктора



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
      function get(index: integer): integer;
      procedure set_val(index, value: integer);
    end;
    
constructor Array_obj.create_random();
var
  i: Integer;
begin
  Randomize;
  New(data);
  for i := Low(data^) to High(data^) do
    data^[i] := Random(MaxInt);
end;

destructor Array_obj.del();
begin
  Dispose(data);
end;

function Array_obj.get(index: integer): integer;
begin
  Result := data^[index];
end;

procedure Array_obj.set_val(index, value: integer);
begin
  data^[index] := value;
end;

var
  a : Array_obj;
begin
  a.create_random;
  a.set_val(0, 100); // Set the first element to 100
  writeln(a.get(0)); // Output the first element
  
  a.del;
  
  writeln('OK!');
end.
