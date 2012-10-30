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
  check_errors(a,b,c)
  return :equilateral if equilateral?(a,b,c)
  return :isosceles if isosceles?(a,b,c)
  return :scalene if scalene?(a,b,c)
end

def equilateral?(a, b, c)
  a == b && b == c
end

def isosceles?(a, b, c)
  (a == b && b != c) || 
  (b == c && c != a) || 
  (c == a && a != b)
end

def scalene?(a, b, c)
  a != b && b != c && c != a
end

def check_errors(a,b,c)
  raise TriangleError, "side with lenght 0" if a == 0 || b == 0 || c ==0
  raise TriangleError, "negative side" if a < 1 || b < 1 || c < 1
  raise TriangleError, "No two sides can add to be less than or equal to the other side" if (a+b <= c) || (a+c <= b) || (b+c <= a)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
