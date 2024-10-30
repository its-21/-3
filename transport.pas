program CarFlowAnalysis;

var
  carType: Integer;
  totalCars: Integer;
  countPassenger: Integer;
  countLightTruck: Integer;
  countHeavyTruck: Integer;
  countTransport: Integer;

begin

  totalCars := 0;
  countPassenger := 0;
  countLightTruck := 0;
  countHeavyTruck := 0;
  countTransport := 0;

  writeln('Введите тип автомобиля (1 - легковые, 2 - грузовые до 5т., 3 - грузовые свыше 5т., 4 - транспорт).');
  writeln('Для завершения введите любое отрицательное число.');

  repeat
    readln(carType);
    
    if carType = 1 then
    begin
      countPassenger := countPassenger + 1;
      totalCars := totalCars + 1;
    end
    else if carType = 2 then
    begin
      countLightTruck := countLightTruck + 1;
      totalCars := totalCars + 1;
    end
    else if carType = 3 then
    begin
      countHeavyTruck := countHeavyTruck + 1;
      totalCars := totalCars + 1;
    end
    else if carType = 4 then
    begin
      countTransport := countTransport + 1;
      totalCars := totalCars + 1;
    end
    else if carType <= 0 then
      break 
    else
      writeln('Некорректный ввод. Пожалуйста, введите число от 1 до 4 или отрицательное число для завершения.');
      
  until false;


  if totalCars >= 0 then
  begin
    writeln('Процентное соотношение типов автомобилей:');
    writeln('Легковые: ', (countPassenger / totalCars) * 100, '% (Количество: ', countPassenger, ')');
    writeln('Грузовые до 5т.: ', (countLightTruck / totalCars) * 100 ,'% (Количество: ', countLightTruck, ')');
    writeln('Грузовые свыше 5т.: ', (countHeavyTruck / totalCars) * 100 ,'% (Количество: ', countHeavyTruck, ')');
    writeln('Транспорт: ', (countTransport / totalCars) * 100 ,'% (Количество: ', countTransport, ')');
  end
  else
    writeln('Не было зарегистрировано ни одного автомобиля.');
  
  end.