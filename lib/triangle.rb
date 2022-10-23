class Triangle

  def initialize(length, height, width)
    @length = length
    @height =  height
    @width =  width
  end

  def kind
    if (@length <= 0 || @height <= 0 || @width <= 0)
      raise TriangleError
    elsif(@length + @height <= @width|| @height + @width <= @length || @length + @width <= @height)
      raise TriangleError
    elsif (@length == @height && @height == @width)  
      :equilateral
    elsif (@length == @height || @height == @width || @length == @width)  
      :isosceles 
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
