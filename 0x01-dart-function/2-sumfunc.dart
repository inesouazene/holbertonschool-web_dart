// function add() that accepts two arguments a, b and return the sum
int add(int a, int b) {
    return a + b;
}

// function sub() that accepts two arguments a, b and return the difference
int sub(int a, int b) {
    return a - b;
}

// function showFunc() that returns a message with the output of the two other function.
String showFunc(int a, int b) {
    return "Add $a + $b = ${add(a, b)}\nSub $a - $b = ${sub(a, b)}";
}
