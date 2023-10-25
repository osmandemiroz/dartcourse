// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

//S meant for class just do own bussinnesses
//The "S"ingle-responsibility principle: "There should never be more than one reason for a class to change." In other words, every class should have only one responsibility.
class UserMamager {
  String name;
  UserMamager({
    required this.name,
  });
  void changeUserName(String newName) {
    this.name = newName;
  }

  // this is wrong usage
  void changeLocalization() {}
}

//class closed for modification but open for extensions
//The "O"pen–closed principle: "Software entities ... should be open for extension, but closed for modification
class Product {
  final String productName;
  final int productAmount;

  Product({required this.productName, required this.productAmount});
}

class ProductCategories extends Product {
  ProductCategories(this.categories,
      {required super.productName, required super.productAmount});
  final String categories;
}
