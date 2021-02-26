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
  ArraySort.new([1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 80])
  
  array_sort.numbers(9)
  array_sort.numbers(2)
  array_sort.numbers(10)

  # => above: 6 below: 7
  # => above: 12 below: 1
  # => above: 5 below: 8
