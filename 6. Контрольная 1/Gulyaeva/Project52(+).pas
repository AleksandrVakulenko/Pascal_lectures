// 4-2

program Project52;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Switch( var a, b : Integer): Integer;
  var t : Integer;
begin
    t := a;
    a := b;
    b := t;
end;

var a : array[1 .. 5] of Integer = (1, 2, 3, 4 , 5);
    I : Integer;
begin
    Switch( a[1] , a[4]);
    for I := 0 to 5 do
       write( a[I] );
end.
