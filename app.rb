require "pry"

orig_num = 4408041234567893
# split_array = orig_num.to_s.split("")
#
# puts split_array

# split_array.each do |i|
#   split_array = i.to_i
#   return split_array
# end

# split_array.each_index

def digits(n)
  Math.log10(n).floor.downto(0).map { |i| (n/10**i) % 10}
end

array = digits(orig_num)

array.each_index do |index|
  if (index % 2 == 0)
    double_array = array[index] * 2
  else
    double_array = array[index]
  end
  puts double_array
end

binding.pry
