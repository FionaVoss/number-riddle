def print_sequence(first_num, iterations)
  return if iterations == 0
  puts first_num
  next_num = next_num(first_num.to_s, false)
  print_sequence(next_num, iterations - 1)
end

def next_num(number, explain)
  old_chunk_array = slice_chunks(number)
  if explain
    puts "Input Number: " + number
    puts "\nStep 1 - slice input number into chunk: "
    p old_chunk_array
  end
  new_chunks = old_chunk_array.map {|n| next_piece(n)}
  if explain
    puts "\nStep 2 - convert chunks into new-number chunks: "
    p new_chunks
  end
  new_chunks = new_chunks.join
  if explain
    puts "\nStep 3 - combine new chunks into the new number: "
    p new_chunks
  end
  new_chunks
end

def next_piece(chunk)
  places = chunk.length
  char = chunk[0]
  string = places.to_s + char.to_s
end

def slice_chunks(string)
  arr = string.split("")
  chunks_arr = arr.slice_when {|i,j| i != j}.to_a
end

#next_num("111223", true)
print_sequence(4, 10)
