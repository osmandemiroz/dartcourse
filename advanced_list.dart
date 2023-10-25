// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final carList = [
    Car(category: CarModels.bmw, age: 12, isSecondHand: false),
    Car(category: CarModels.toyota, age: 1, location: 'Turkey'),
    Car(category: CarModels.ford, age: 2),
    Car(category: CarModels.bmw, age: 0, isSecondHand: false, location: 'USA'),
  ];

  final howManySecondHand =
      carList.where((element) => element.isSecondHand == true).length;

  print(howManySecondHand);

  final newCar = Car(category: CarModels.ford, age: 2);

  final isHaveCar = carList.contains(newCar);

  print(isHaveCar);

  final queryResult = carList
      .where((element) => element.category == CarModels.bmw)
      .join('----');

  print(queryResult);

  print("*******************");

  //below code line sorting car ages int the list of arrays
  carList.sort((first, second) => second.age.compareTo(first.age));

  print(carList);
}

class Car {
  final CarModels category;
  final int age;
  final bool isSecondHand;
  String? location;

  Car({
    required this.category,
    required this.age,
    this.isSecondHand = true,
    this.location,
  });

  @override
  bool operator ==(covariant Car other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.age == age &&
        other.isSecondHand == isSecondHand &&
        other.location == location;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        age.hashCode ^
        isSecondHand.hashCode ^
        location.hashCode;
  }

  @override
  String toString() {
    return (category.toString() + ' branded ' + age.toString() + ' aged car');
  }
}

enum CarModels { bmw, ford, toyota, skoda }
