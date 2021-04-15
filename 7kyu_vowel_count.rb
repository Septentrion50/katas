=begin

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.

=end

def get_count(input_str)
  count = 0
  input_str.each_char do |i|
    if i.match? /[aeiou]/
      count += 1
    end
  end
  return count
end

puts get_count("je suis une theiere")


# Autre solution possible : 

def getCount(inputStr)
 inputStr.downcase.count('aeiou')
end

# Celle ci fonctionne aussi très bien : 

def getCount(inputStr)
  inputStr.scan(/[aeiou]/i).size  # On peut mettre l'option i derrière le regex pour 
                                  # qu'il soit insensible à la casse.
end
