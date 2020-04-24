def intersection(list1, list2)

  intersections = {}

  list1.each do |value|
    if !intersections[value]
      intersections[value] = 1
    elsif intersections[value]
      intersections[value] += 1
    end
  end

  list2.each do |value|
    if intersections[value]
      intersections[value] += 1
    end
  end

  return (intersections.select { |key, value| value == 2}).keys
end