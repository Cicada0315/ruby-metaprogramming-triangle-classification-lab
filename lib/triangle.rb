class Triangle
  attr_accessor :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3 
    sides=[side1, side2, side3].sort
    #if @sides.any? { |x| x <= 0 }
    if @side1<=0 || @side2 <= 0 || @side3 <=0
      raise TriangleError
    end
    if sides[0] + sides[1] <= sides[2]
      raise TriangleError   
    end
  end

  def kind
    
    if side1==side2 && side2==side3
      :equilateral
    elsif side1==side2 || side1==side3 || side2==side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
