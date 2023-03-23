//+

program task_2;
//5 - 2
{$APPTYPE CONSOLE}

uses
  SysUtils;
const N = 100;
type
    arrtype = array[1..N] of integer;
var
    arr: arrtype;
    i: byte;
    avrg: real;

procedure fill_array(var a: arrtype);
    begin
        for i:=1 to N do a[i]:=random(50)+1;
    end;

function average(a:arrtype):real;
    var
        sum:integer;
    begin
        sum := 0;
        for i:=1 to N do
            sum:=sum+a[i];
        average := sum / n;
    end;

begin
    randomize;
    fill_array(arr);
    for i:=1 to N do write(arr[i]:4);
    writeln;
    avrg := average(arr);
    writeln(avrg:3:2);
    readln;
end.
