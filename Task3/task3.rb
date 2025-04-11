numbers = gets.to_i
count = 0
while numbers > 0
  perem = gets.to_i
  while perem != 0
    ost = perem % 10
    if ost % 3 == 0
      count += ost
    end
    perem /= 10 
  end
  numbers -= 1
end
puts count
