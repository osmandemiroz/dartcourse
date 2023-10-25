//singleton is using for 1 class substances

void main(List<String> args) {}

class SingletonExample {
//static instance variable
  static final SingletonExample _instance = SingletonExample._();
//private constructor
  SingletonExample._();
//public getter to access the instance
  static SingletonExample get instance => _instance;
  // class properties and methods goes here
  //
  //
}

//https://medium.com/@osmanndemirozz/singleton-pattern-on-flutter-dart-28b8900bd31b
//above link is mine medium title about singleton pattern you can discover anything on it

class EagerSingleton {
  static EagerSingleton? _instace;
  static EagerSingleton get instance {
    if (_instace == null) _instace = EagerSingleton._init();
    return _instace!;
  }

  EagerSingleton._init();
}

class LazySingleton {
  static LazySingleton? _instance;
  LazySingleton._();
  static LazySingleton getInstance() {
    if (_instance == null) {
      _instance = LazySingleton._();
    }
    return _instance!;
  }
}
