Future<void> main(List<String> args) async {
  print('first');

  await Future.delayed(Duration(seconds: 2));

  print('second');
}
