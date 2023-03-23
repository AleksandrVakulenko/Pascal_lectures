//1 - 4
program Project4;
{$APPTYPE CONSOLE}

uses
    SysUtils;

Type
    pvec = ^vec3D;
    
    vec3D = record
        corX, corY, corZ : real;
        point : pvec;
    end;
    
    arr_of_vec = array of vec3D;
    
    parr = ^arr_of_vec;
    
    
procedure print(num1 : vec3D);
    begin
        writeln(num1.corX:0:5, ' ',num1.corY:0:5, ' ',num1.corZ:0:5, ' ');
    end;


function sum_vec3D_pt(PtVec : parr): vec3D;
    var
        i : integer;
        res : vec3D;
    begin
        for I := 0 to high(PtVec) do begin
            res.corX := PtVec[i].corX + PtVec[i+1].corX;
            res.corY := PtVec[i].corY + PtVec[i+1].corY;
            res.corZ := PtVec[i].corZ + PtVec[i+1].corZ;
            //writeln(PtVec[i].corX:0:5, ' ',PtVec[i].corY:0:5, ' ',PtVec[i].corZ:0:5, ' ');
        end;
        sum_vec3D_pt := res;
    end;


procedure ram_arr_vec(var arg : arr_of_vec);
    var
        I : integer;
    begin
        for I := 0 to high(arg) do begin
            arg[i].corX := random;
            arg[i].corY := random;
            arg[i].corZ := random;
            arg[i].point := @arg[i+1];
            //print(arg[i]);
        end;
        arg[i].point := @nil;
    end;


var
    arr : arr_of_vec;
    ptr : pvec;
    //n : integer;

begin
//readln(n);
setlength(arr, 10);
ram_arr_vec(arr);
ptr := @arr[0];
print(sum_vec3D_pt(ptr));

end.
