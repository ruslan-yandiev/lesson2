cart = {}

loop do
  print "Введите наименование товара.
  \rДля прекращения ввода товаров нажмите ENTER или ведите слово 'stop':"
  name = gets.chomp

  break if name == 'stop' || name == ''

  print 'Введите цену за еденицу довара:'
  price = gets.strip.to_f

  print 'Введите количество купленного товара:'
  amount = gets.strip.to_f

  cart[name.to_sym] = {price: price, amount: amount}
end

sum = 0

cart.each do |key, value|
  factor = 1

  puts "Product: #{key}"

  value.each do |key2, value2|
    puts "#{key2}: #{value2}"
    factor *= value2
  end

  puts "Общая стоимость: #{factor}"

  sum += factor
end

puts "Итоговая стоимость всех товаров в корзине: #{sum}"
