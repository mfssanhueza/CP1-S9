class Morseable
  def initialize(number)
    @number = number
  end
  @morse = {}

  def to_morse
    h = '.----' if @number == 1
    h = '..---' if @number == 2
    h = '...--' if @number == 3
    h = '....-' if @number == 4
    h = '.....' if @number == 5
    h = '-....' if @number == 6
    h = '--...' if @number == 7
    h = '---..' if @number == 8
    h = '----.' if @number == 9
    @morse[h] = h
  end
end

m = Morseable.new(3)
print m.to_morse
