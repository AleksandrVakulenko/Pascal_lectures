// Утечка памяти на строке 22

Program vec_obj;
{$APPTYPE CONSOLE}
uses
    SysUtils, Math;
const
    Size_N = 190000000;
type
    arr700mb = array [0..Size_N] of integer;
    Array_obj = object;
        private
            data : ^arr700mb;
        public
            constructor create_random();
            destructor del();
    end;
constructor Array_obj.create_random();
var
    i: Integer;
begin
    New(data);
    for i := 0 to Size_N do
        data^[i] := Random(MaxInt);
end;
destructor Array_obj.del();
begin
    if Assigned(data) then begin
        Dispose(data);
        data := nil;
    end;
end;
var
    a : Array_obj;
begin
    a.create_random;
    a.create_random;
    a.del;
    a.del;
    Writeln('OK!');
end.