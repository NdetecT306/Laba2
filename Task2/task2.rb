numbers = gets.to_i
max_flower = 0
if numbers <= 0
  print "Быть не может"
  exit
else
  clumba = []
  numbers.times do
    flower = gets.to_i
    if flower > 0
      clumba << flower
    end
    max_flower = flower if flower > max_flower
  end
  poliv = gets.to_i
  if poliv < max_flower
    print "Как купишь новую лейку - приходи."
    exit
  else
    step = 0
    perem = poliv
    clumba.each_with_index do |flower, i|
      if perem < flower
        step += (i * 2 + 1)
        perem = poliv
      else
        step += 1
      end
      perem -= flower
    end
    puts step
  end
end
