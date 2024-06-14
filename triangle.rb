# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c].uniq
  if a <= 0 or b <= 0 or c <= 0
    raise TriangleError, "all sides should be greater than 0"
  end
  if a + b <= c or a + c <= b or b + c <= a
    raise TriangleError, "the sum of two sizes must be greater than the third side"
  end
  case sides.size
    when 1 then :equilateral
    when 2 then :isosceles
    when 3 then :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
