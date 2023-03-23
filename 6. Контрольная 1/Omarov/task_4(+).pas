//3-4
type
    TVector = record
        x, y, z: Integer;
        next: ^TVector;
    end;


function FindMinVector(start: ^TVector): TVector;
    var
        cur: ^TVector;
        minVec: TVector;
    begin
        minVec := start^;
        cur := start^.next;
        while cur <> nil do
        begin
            if Sqrt(cur^.x * cur^.x + cur^.y * cur^.y + cur^.z * cur^.z) < Sqrt(minVec.x * minVec.x + minVec.y * minVec.y + minVec.z * minVec.z) then
                minVec := cur^;
            cur := cur^.next;
        end;
        Result := minVec;
    end;


var
    vecArr: array[1..10] of TVector;
    i: Integer;
    prevVec: ^TVector;
    
begin
    Randomize;
    for i := 1 to 10 do
    begin
        vecArr[i].x := Random(10) - 5;
        vecArr[i].y := Random(10) - 5;
        vecArr[i].z := Random(10) - 5;
        if i < 10 then
            vecArr[i].next := @vecArr[i + 1]
        else
            vecArr[i].next := nil;
    end;

    prevVec := @vecArr[1];
    while prevVec^.next <> nil do
        prevVec := prevVec^.next;
    prevVec^.next := nil;

    WriteLn('Vectors:');
    for i := 1 to 10 do
        WriteLn(vecArr[i].x, ' ', vecArr[i].y, ' ', vecArr[i].z);

    WriteLn('Minimum vector:');
    WriteLn(FindMinVector(@vecArr[1]).x, ' ', FindMinVector(@vecArr[1]).y, ' ', FindMinVector(@vecArr[1]).z);
end.