class Product
  attr_reader :name, :size
  def initialize(name, *size)
    @name = name
    @size = size.map(&:to_i)

  end

  def average
    size.sum / size.count
  end
end

products_list = []

file = File.open('catalogo.txt', 'r')
data = file.readlines
file.close

data.each do |prod|
  ls = prod.delete("\n").split(', ')
  products_list << Product.new(*ls)
end
print products_list.first.average
# print products_list.first.size
# puts products_list.first.size.average
