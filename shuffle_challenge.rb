def shuffle(array)
  shuffled_array = []
  cloned_array = array.dup
  while cloned_array.any? do
    shuffled_array << cloned_array.delete_at(rand(cloned_array.length))
  end
  shuffled_array
 end
