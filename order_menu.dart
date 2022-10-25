// Goal: Understanding Dictionary in Dart.
// 1- Create a dictionary of food (items) with their prices.
// 2- Ask the user to choose a selection from the menu, and how many to order of selected item.
// 3- Calculate the order total and print it to the user.
import 'dart:io';

final menu = {
  'Donuts': 10,
  'Cake': 20,
  'Chocolate': 18,
  'Ice Cream': 24,
};
int counter = 1;

void main() {
  //message for user
  print('Place your order by choosing one of the following items:');

  // iterate using for loop
  for (final entry in menu.entries) {
    print('------------------------');
    print('$counter - ${entry.key} : ${entry.value} SR');
    counter++;
    if (counter - 1 == menu.length) {
      print('------------------------');
    }
  }

  // Ask for a user input for both the item and its quantity
  print('Enter the dessert number you want to order:');
  String? itemNum = stdin.readLineSync();

  print('Enter the quantity of that dessert:');
  String? itemQuantity = stdin.readLineSync();

  if (itemNum != null && itemQuantity != null) {
    int itemNumInt = int.parse(itemNum);
    int itemQuantityInt = int.parse(itemQuantity);

    var itemSelectedPrice = menu.values.elementAt(itemNumInt - 1);

    var itemSelectedKey = menu.keys.elementAt(itemNumInt - 1);

    var total = itemSelectedPrice * itemQuantityInt;
    print(
        'You ordered $itemQuantityInt of $itemSelectedKey -> $itemSelectedPrice SR per item');
    print('****************');
    print('* Total: $total SR *');
    print('****************');
  }
}
