def add(first, second)
    return first + second
  end
  
  
  def subtract(first, second)
  return first - second
  end
  
  
  
  
  def sum(array)
    somme = 0
    array.each { |a| somme +=a }
    return somme
  
  end
  
    # autre méthode plus concises big up Steven
    # def sum(array)
    #
      # return array.sum
    #
    #
    # end
  
  def multiply(*elements)
    multiple = 1
    elements.each { |elem| multiple = multiple * elem}
    return multiple
  end
  
  puts multiply(1,2,3,4,5)
  
  def power(base, exposant)
    puissance = 1
    for i in 1..exposant do
      puissance = puissance * base
    end
  
  return puissance
  
  end
  
  puts power(5,2)
  
  def factorial(argument)
    facto = 1
    case argument
    when argument <0
      puts "entier positif en argument please"
    when 0
      return facto
    else
      1.upto(argument) { |n| facto = facto*n }
      return facto
    end
  
  end
  
  
  puts factorial(10)