program EnergyPower;

var
  N: Integer; // Количество предприятий
  i: Integer; // Счетчик
  power: Real; // Энергетическая мощность
  totalPower: Real; 
  maxPower: Real; 
  maxIndex: Integer; // Порядковый номер предприятия с максимальной мощностью

begin
  writeln('Введите количество предприятий:');
  readln(N);
  
  totalPower := 0;
  maxPower := -1; 
  maxIndex := -1; 

  for i := 1 to N do
  begin
    writeln('Введите мощность для предприятия ', i, ':');
    readln(power);
    totalPower := totalPower + power; 

    
    if power > maxPower then
    begin
      maxPower := power;
      maxIndex := i; // Порядковый номер (начинается с 1)
    end;
  end;

  
  writeln('Общая мощность: ', totalPower);
  writeln('Средняя мощность: ', (totalPower / N));
  writeln('Порядковый номер предприятия с наибольшей мощностью: ', maxIndex);
end.