Program Example;
{$APPTYPE CONSOLE}

uses
    SysUtils, Math;


type
    Vec3 = class
    private
        x, y, z : real;
    
    public
        constructor create(ax, ay, az : real);
        function norm_value(): real;
        
        function nyan(): integer;

        
    end;


constructor Vec3.create(ax, ay, az : real);
    begin
        x := ax;
        y := ay;
        z := az;
    end;


function Vec3.norm_value() : real;
    begin
        writeln('nyan');
        norm_value := sqrt(x*x + y*y + z*z);
    end;
    
    
function Vec3.nyan(): integer;
    begin
        nyan := -4;
    end;
    
    
    
    
function nyan(): integer;
    begin
        nyan := -1;
    end;
    


var
    a : Vec3;
        

Begin
    
    writeln('start');
    
    a := Vec3.create(1, 2, 4);
    writeln(a.norm_value);
    writeln(a.nyan);
    writeln(nyan);

End.






