void main(List<String> args) {
  // Map<String, int> users = {
  //   'osman': 20,
  //   'mehmet': 43,
  // };

  // for (var element in users.keys) {
  //   print('${element} - ${users[element]}');
  // }
  // print("*************");

  // for (var i = 0; i < users.length; i++) {
  //   print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  // }

  Map<String, List<int>> bankAccounts = {
    'Osman': [50, 300],
    'Mehmet': [2, 48],
    'Sude': [300],
  };
  bankAccounts['Salih'] = [123, 999];

  for (var account in bankAccounts.keys) {
    for (var money in bankAccounts[account]!) {
      if (money > 50) {
        print('you have greater than 50 liras ${account}');
        break;
      }
    }
  }
  print('****************************');

  for (String name in bankAccounts.keys) {
    int totalMoneyPerAccount = 0;
    for (int money in bankAccounts[name]!) {
      totalMoneyPerAccount += money;
    }
    print('${name} as named customer you have ${totalMoneyPerAccount}');
  }
}
