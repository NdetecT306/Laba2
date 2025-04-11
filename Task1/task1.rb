mystring = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
print "Введите значение:\n"
number = gets.to_i
while number <= 0 || number > 26
  print "Неправильное число. Попробуйте снова:\n"
  number = gets.chomp.to_i
end
perem = number - 1
while perem >= 0
  (number - 1).downto(perem) do |i|
    print mystring[i] + " "
  end
  puts
  perem -= 1
end
