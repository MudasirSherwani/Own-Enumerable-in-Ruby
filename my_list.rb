require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 }) #=> true
puts(list.all? { |e| e > 5 }) #=> false
puts(list.any? { |e| e == 2 }) #=> true
puts(list.any? { |e| e == 5 }) #=> false
print(list.filter(&:even?)) #=> [2, 4]
