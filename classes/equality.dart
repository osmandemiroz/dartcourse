void main(List<String> args) {
  final user1 = BankUser(id: 1, name: 'sude');
  final user2 = BankUser(id: 1, name: 'sude');

  print(user1 == user2); // it returns false because of not same instances

  final equalityBankUser1 = EqualityBankUser(id: 1, name: 'osman');
  final equalityBankUser2 = EqualityBankUser(id: 1, name: 'osman');

  print(equalityBankUser1 ==
      equalityBankUser2); // it returns true therefore in this classes of equality
}

class BankUser {
  final int id;
  final String name;

  BankUser({required this.id, required this.name});
}

class EqualityBankUser {
  final int id;
  final String name;

  EqualityBankUser({required this.id, required this.name});

  @override
  bool operator ==(covariant EqualityBankUser other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
