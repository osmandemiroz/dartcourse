abstract class IUser {
  final String name;
  final int money;

  IUser({required this.name, required this.money});
  void getUserName() {
    print(name);
  }
}

class TurkishUser extends IUser {
  TurkishUser({required super.name, required super.money});
  void getTurkishUserMoney() {
    print("$money");
  }
}
