program inches;
var k, n, i, step, h: integer;
c: real;

begin
  writeln('Введите начало диапозона: ');
  readln(k);
  writeln('Введите конец диапозона: ');
  readln(n);
  writeln('Введите значение шага: ');
  readln(h);
 
 for i:= k to n do
 begin
   if i mod h = 0 then 
   begin
   c:= i*2.54;
   writeln(i, ' ', c);
 end;
 end;
end.