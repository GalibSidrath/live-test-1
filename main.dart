void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10.0);
  
  print('Fruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (dynamic a in fruits) {
    print("Name : ${a['name']}, Color: ${a['color']}, Price: \$${a['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (dynamic b in fruits) {
    double beforePrice = b['price'];
    double dis_ammount = beforePrice * (discount / 100);
    double afterPrice = beforePrice - dis_ammount;
    b['price'] = afterPrice;
  }
}
