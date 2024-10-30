program population;

var
  sp, cp: real;
  g: real;
  cyear: integer;

begin
  sp := 65000;
  g := 0.03;

  cyear := 1983;
  cp := sp;

  while cyear <= 2000 do
  begin
    writeln(cyear, ' ', cp);
    cp:= cp * (1 + g);
    cyear := cyear + 1;
  end;
end.