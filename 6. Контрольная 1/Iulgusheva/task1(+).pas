// b1, q должны быть real
//1-1
program Variant1_Zadanie1;

{$APPTYPE CONSOLE}

uses
    SysUtils;

var
    a:array[1..120] of integer;
    b1, q: integer;
    N, i: byte;

begin
    write('N: ');
        readln(N);
    write('b1: ');
        readln(b1);
    write('q: ');
        readln(q);
    a[1] := b1;
    for i := 2 to N do
         a[i] := a[i - 1] * q;
    writeln;
    writeln(N, ' pervih chlenov geometricheskoi progressii:');
    for i := 1 to N do
        write(a[i], ' ');
    readln
end.
