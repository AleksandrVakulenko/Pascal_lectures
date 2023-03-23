//
// 1 - 3
program Project4;
{$APPTYPE CONSOLE}

uses
    SysUtils;

Type
    vec3D = record
        corX, corY, corZ : real;
    end;

function sum_vec3D(arg1, arg2 : vec3D): vec3D;
    var
        res : vec3D;
    begin
        res.corX := arg1.corX + arg2.corX;
        res.corY := arg1.corY + arg2.corY;
        res.corZ := arg1.corZ + arg2.corZ;
        sum_vec3D := res;
    end;

procedure rmv(var arg : vec3D);
    begin
        arg.corX := random;
        arg.corY := random;
        arg.corZ := random;
    end;

var
    num1, num2 : vec3D;

begin
rmv(num1);
rmv(num2);
writeln(num1.corX:0:5, ' ',num1.corY:0:5, ' ',num1.corZ:0:5, ' ');
writeln(num2.corX:0:5, ' ',num2.corY:0:5, ' ',num2.corZ:0:5, ' ');
num1 := sum_vec3D(num1, num2);
writeln(num1.corX:0:5, ' ',num1.corY:0:5, ' ',num1.corZ:0:5, ' ');
readln;
end.
