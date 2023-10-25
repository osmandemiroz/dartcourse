class User {
  final int age;
  final String name;

  User({required this.age, required this.name});
}

extension UserExtension on User {
  void greet() {
    print(this.name);
  }
}

void main(List<String> args) {
  String? userId = 'admin';
  if (userId.isAdmin) {
    print('you are admin');
  } else {
    print('you werent');
  }
}

extension StringUserCheckExtension on String? {
  bool get isAdmin => (this ?? '').toLowerCase() == 'admin';
}
