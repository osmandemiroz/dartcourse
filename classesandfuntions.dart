class User {
  final String userId; // this is required parameters of User class
  final String userName; // this is required parameters of User class
  int? userAge; // this is a not required parameters of User class
  String? userLocation;
  int? _userField;

  //getter setter methods are used while special rules *thats are the recommended practice
  int get userField => _userField ?? 0;

  set userField(int value) {
    _userField = value;
  }

  User({
    required this.userId,
    required this.userName,
    this.userAge,
    this.userLocation,
  });

  //below it used by tostring method overriding
  @override
  String toString() {
    return (userName + 'adli banka hesabi');
  }
}

void main(List<String> args) {
  final userOsman = User(
    userId: '123',
    userName: 'asloha',
  );

  print(userOsman.userName +
      (' ') +
      (userOsman.userLocation ?? 'Location Not Defined'));

//this function check balance is valid or not empty
  int? checkAmount(int? money) {
    if (money == null || money == 0) {
      return null;
    } else {
      return money;
    }
  }

  //below  function called as conditional expression in dart is easy way to express returning functions
  bool isItValidAccount = checkAmount(0) == null ? false : true;
  print(isItValidAccount);

//we use exclamation(ünlem) since you were sure about your variable are not null
// if we not sure we use question mark (soru işareti)
}
