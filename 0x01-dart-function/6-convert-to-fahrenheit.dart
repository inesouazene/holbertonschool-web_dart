// function convertToF() that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list
List<double> convertToF(List<double> temperaturesInC) {
    return temperaturesInC.map((temperature) => double.parse(((temperature * 9 / 5) + 32).toStringAsFixed(2))).toList();
}
