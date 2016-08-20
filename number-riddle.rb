def print_sequence(first_num, iterations)
  next_num = first_num.to_s
  iterations.times do
    puts next_num
    next_num = next_num(next_num)
  end
end

def next_num(number)
  old_chunk_array = slice_chunks(number)
  new_chunk = old_chunk_array.map {|n| next_piece(n)}
  new_chunk = new_chunk.join
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

print_sequence(4, 10)
