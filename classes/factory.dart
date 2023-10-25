//those cods are simplfied factory keyword using by pet creations

void main(List<String> args) {
  final myPet = Pet.createDog(
    name: 'husky',
    gaurdDog: true,
  );
  print(
    myPet.toString(),
  );

  final yourDog = Pet.createDog(name: 'alisa', gaurdDog: false);
  print(
    yourDog.toString(),
  );
}

class Pet {
  String name;
  Pet(this.name);

  //instance creator
  factory Pet.createDog({required String name, bool gaurdDog = false}) {
    if (gaurdDog) {
      return Cat(name);
    } else {
      return Dog(name);
    }
  }
}

class Cat extends Pet {
  Cat(super.name);
  @override
  String toString() {
    return 'My name is Cat';
  }
}

class Dog extends Pet {
  Dog(super.name);
  @override
  String toString() {
    return 'I am Dog';
  }
}
