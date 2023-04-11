puts 'qual o primeiro lado do triangulo'
  firstSide = gets.chomp.to_i
  
  puts 'qual o segundo lado do triangulo'
  secondSide = gets.chomp.to_i
  
  puts 'qual o terceiro lado do triangulo'
  thirdSide = gets.chomp.to_i
  
  if firstSide == secondSide && secondSide == thirdSide
    puts 'triangulo equilatero'
  end
    if firstSide != secondSide && secondSide != thirdSide 
      puts 'triangulo escaleno'
  else
    puts 'tiangulo isosceles'
  end
  
  