class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c

    @list = [@a, @b, @c]
  end

  class TriangleError < StandardError

    def message
      puts "Please check to ensure that all sides are greater than 0 and that any two sides are greater than the third"
    end
  end


  def kind
    if (@a > 0 && @b > 0 && @c > 0) && (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
      if @list.tally.length == 3
        :scalene
      elsif @list.tally.length == 2
        :isosceles
      else
        :equilateral
      end
    else
      begin
        raise TriangleError
        puts TriangleError.message
      end
    end
  end


    
end
