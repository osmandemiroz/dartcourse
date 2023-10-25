abstract class IStudent {
  final String name;
  final int age;

  IStudent(this.name, this.age);

  void greetYourself() {
    print(name);
  }
}

class ColleaugeStudent implements IStudent {
  @override
  int get age => throw UnimplementedError();

  @override
  void greetYourself() {}

  @override
  String get name => throw UnimplementedError();
}




//if you were using implements instead of extend keyword you must ovveride all functions