// ignore_for_file: public_member_api_docs, sort_constructors_first
class _PrivateClass {
  int? _age;

  int? get getAge => _age;

  set setAge(int? value) {
    _age = value;
  }

  final String name;

  _PrivateClass({required this.name});
}

void main(List<String> args) {
  _PrivateClass osman = _PrivateClass(name: 'Osman');
  osman.setAge = 12;
  print(osman.getAge);

  final user1 = BankUser(id: 1, name: 'sude');
  final user2 = BankUser(id: 1, name: 'sude');

  print(user1 == user2);
}

class BankUser {
  final int id;
  final String name;

  BankUser({required this.id, required this.name});
}
