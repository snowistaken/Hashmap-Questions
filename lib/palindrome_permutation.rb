
def palindrome_permutation?(string)
  string_array = string.split("")
  letter_instances = {}

  string_array.each do |letter|
    if !letter_instances[letter]
      letter_instances[letter] = 1
    else
      letter_instances[letter] +=  1
    end
  end

  duplicate_letters = letter_instances.select { |key, value| (value % 2) == 0}

  if duplicate_letters.values.sum == string_array.length || duplicate_letters.values.sum == string_array.length - 1
    return true
  else
    return false
  end
end