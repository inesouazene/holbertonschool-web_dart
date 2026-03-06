// function calculateArea() that accepts two variables height and base and returns the area of the triangle.
double calculateArea(double height, double base) {
  double area = height * base / 2;
  return double.parse(area.toStringAsFixed(2)); // result rounded to 2 decimal places
}
