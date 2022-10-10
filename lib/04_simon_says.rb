def echo(word)
    return word
end

echo("hello")

######


def shout(word)
  return word.upcase
end

######

def repeat(word, number =2)
  phrase = (word + " ") * number
  phrase.delete_suffix!(" ")
  p phrase

end

######


def start_of_word(word, number)
  return word[0..(number-1)]
  puts word[0..(number-1)]
end

p  start_of_word("Yo momma",2)

######


def first_word(word)
  return word.scan(/\w+/)[0]
end

p first_word("Hello World")
p first_word("oh dear")


######


def titleize(element)
n = element.split.map(&:capitalize).join(' ')
if n.match(/[And]/)
  n.sub!("And", "and")
end

if n.match(/[Or]/)
  n.sub!("Or", "or")
end

if n.match(/[The]/)
  n.sub!("The", "the")
end


end

puts titleize("And the big wesh or and the ahaha ololo")