//we use mixin while the whole class doesnt have any modules just do business we should use mixin
//mixin just use for methods and business returnal events
//for mixin usage we use with keyword

class Bank with BankMixin {
  final String name;
  final int id;

  Bank({required this.name, required this.id});

  @override
  void greetCustomer() {
    print('hello sir $name');
  }
}

mixin BankMixin {
  void greetCustomer();
  void calculateMoney(int money) {
    print('your amount is $money');
  }
}

void main(List<String> args) {
  final customer1 = Bank(name: 'Osman', id: 2);

  customer1.greetCustomer();
}
