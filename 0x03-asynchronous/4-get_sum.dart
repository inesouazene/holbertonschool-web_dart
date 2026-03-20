import '4-util.dart';
import 'dart:convert';

// function calculateTotal() that calculates the total price of items for a certain user
Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = jsonDecode(userData);
    String userId = userDataMap['id'];
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);
    double totalPrice = 0.0;
    for (var product in orders) {
      String priceString = await fetchProductPrice(product);
      double price = jsonDecode(priceString).toDouble();
      totalPrice += price;
    }
    return totalPrice;
  } catch (error) {
    return -1;
  }
}
