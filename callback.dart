void main(List<String> args) {
  final user1 = CallBackClass(money: 1);
}

class CallBackClass {
  int money;

  CallBackClass({required this.money});

  void calculateMoney(Function onComplete(int dat)) {
    money += 5;
    onComplete(money);
  }
}
