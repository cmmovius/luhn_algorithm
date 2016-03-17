# require "pry"

# orig_num = 4408041234567893 #valid
orig_num = 1234567890123456 #NOT valid

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

all_sum = all_split.inject(0){|sum,x| sum + x}

if (all_sum % 10 == 0)
  puts "Number #{orig_num} is valid!"
else
  puts "Number #{orig_num} is NOT valid."
end

# binding.pry
