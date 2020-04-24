
def permutations?(string1, string2)
  intersections = {}
  string1_array = string1.split("")
  string2_array = string2.split("")

  string1_array.each do |value|
    if !intersections[value]
      intersections[value] = 1
    elsif intersections[value]
      intersections[value] += 1
    end
  end

  string2_array.each do |value|
    if intersections[value]
      intersections[value] += 1
    end
  end

  if ((intersections.select { |key, value| (value % 2) == 0}).values.sum / 2) == string1_array.length
    return true
  else
    return false
  end
end