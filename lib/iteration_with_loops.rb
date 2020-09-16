def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  only_strings =[]
  outer_index = 0
  while outer_index < src.count do
    inner_index = 0
    while inner_index < src[outer_index].count do
      if src[outer_index][inner_index].class == String
        only_strings << src[outer_index][inner_index]
      end
      inner_index += 1
    end
    outer_index += 1
  end
  only_strings.join(" ")
end
