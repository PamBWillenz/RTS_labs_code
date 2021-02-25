# 1. Print the number of integers in an array that are above 
# the given input and the number that are below, 
# e.g. for the array [1, 5, 2, 1, 10] 
# with input 6, print “above: 1, below: 4”.
class ArraySort
  def initialize(array)
    @array = array
  end

  def above(input)
    above = []
    @array.each do |integer|
      above << integer if integer > input
    end
    above.count
  end

  def below(input)
    below = []
    @array.each do |integer|
      below << integer if integer < input
    end
    below.count
  end

  def numbers(input)
    puts "above: #{self.above(input)} below: #{self.below(input)}"
  end
end
  

  array_sort = 
  ArraySort.new([1, 5, 10, 15, 20, 25, 30, 35, 36, 37, 38, 40, 42, 2, 1, 10])
  
  array_sort.numbers(6)
  array_sort.numbers(3)
  array_sort.numbers(10)

  # => above: 12 below: 4
  # => above: 13 below: 3
  # => above: 10 below: 4
