//4-2
var
    myarray: array of integer;
    i, j: integer;

procedure swap(var arr: array of integer; i, j: integer);
var
    t: integer;
begin
    t := arr[i];
    arr[i] := arr[j];
    arr[j] := t;
end;

begin
    setlength(myarray, 5);
    myarray[0] := 1;
    myarray[1] := 2;
    myarray[2] := 3;
    myarray[3] := 4;
    myarray[4] := 5;
    
    i := 1;
    j := 3;
    swap(myarray, i, j);
    
    for i := 0 to length(myarray) - 1 do
        write(myarray[i], ' ');
end.
