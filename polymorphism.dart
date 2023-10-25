void main(List<String> args) {
  IUser osman = TurkicUser();

  osman.greet();

  osman = EUUser();

  osman.greet();

//those codes are called polymorphism priciple thats are basic of subclass idea
//ortak sınıftan türeyen farklı işler gören sınıflar üretir
}

abstract class IUser {
  final String id;

  IUser({required this.id});

  void greet();
}

class TurkicUser implements IUser {
  @override
  void greet() => print('merhaba');

  @override
  String get id => 'Turkish';
}

class EUUser implements IUser {
  @override
  void greet() => print('hello');

  @override
  String get id => 'EU';
}
