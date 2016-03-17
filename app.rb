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
double_array = []

array.each_index do |index|
  if (index % 2 == 0)
    double_array << array[index] * 2
  else
    double_array << array[index]
  end
end

double_join = double_array.join
double_i = double_join.to_i
all_split = digits(double_i)

binding.pry
