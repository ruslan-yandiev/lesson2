begin
  puts 'Введите день:'
  day = gets.chomp.to_i

  puts 'Введите месяц:'
  month = gets.chomp.to_i

  puts "Нет такой даты! \nПопробуйте еще раз." if day > 31 || month > 12
end while day > 31 || month > 12

puts 'Введите год:'
year = gets.chomp.to_i

days_m = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_m[1] = 29 if year % 400 == 0 || year % 4 == 0 && year % 100 != 0

s = 0

days_m[0...month-1].each { |m| s += m }

s += day

puts "Порядковый номер даты: #{s}"
