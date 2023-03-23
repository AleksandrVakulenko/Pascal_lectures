//(+/-)
// все так кроме критерия минимума
//2-4

{$APPTYPE CONSOLE}

type
    Vector = record
        x, y: real;
    end;
    
    PNode = ^Node;
    
    Node = record
        vec: Vector;
        next: PNode;
    end;


function FindMinAbsVec(node: PNode): Vector;
    var
        minVec: Vector;
    begin
        minVec := node^.vec;
        while (node <> nil) do begin
            if (abs(node^.vec.x) < abs(minVec.x)) and (abs(node^.vec.y) < abs(minVec.y)) then
                minVec := node^.vec;
            node := node^.next;
        end;
        FindMinAbsVec := minVec;
    end;


var
    nodes: array [1..10] of Node;
    i: integer;
    curNode: PNode;
    prevNode: PNode;

begin
    randomize;
    for i := 1 to 10 do begin
        nodes[i].vec.x := random(21) - 10; // случайные числа от -10 до 10
        nodes[i].vec.y := random(21) - 10;
        if (i < 10) then
            nodes[i].next := @nodes[i+1] // каждая указывает на следующую
        else
            nodes[i].next := nil; // последняя указывает в никуда
    end;
    curNode := @nodes[1]; // начинаем с первой
    writeln('Vectors:');
    while (curNode <> nil) do begin
        writeln('(', curNode^.vec.x:0:2, ', ', curNode^.vec.y:0:2, ')');
        prevNode := curNode;
        curNode := curNode^.next;
    end;
    writeln('Min vector:', FindMinAbsVec(@nodes[1]).x:0:2, ', ', FindMinAbsVec(@nodes[1]).y:0:2);
end.