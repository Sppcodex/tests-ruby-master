ef who_is_bigger(*numbers)
  detect = 0
  # retourner nil detected s'il y a un "nil"
  numbers.each {|a| if a == nil then detect = detect+1 end }
  # la methode compact enlève tous les nil de l'array
  max = numbers.compact.max

  if detect > 0 then
  return "nil detected"
  else
  return "#{max} is bigger"
  end

  puts detect
end


p who_is_bigger(98, 120, 22,33,55,78,100)
p who_is_bigger(nil, 3, 23)


def reverse_upcase_noLTA(string)
  result = string.reverse.upcase.gsub(/L|T|A/,"")
end

puts reverse_upcase_noLTA("Tomahawk")

def array_42(array)
  array.include?(42)
end

p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42])

def magic_array(array)
  array.flatten.sort.map{ |e| e *2}.reject{|x| x%3 == 0}.uniq.sort
end