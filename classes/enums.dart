void main(List<String> args) {
  final backroundColor = Color.red;

  switch (backroundColor) {
    case Color.red:
      print(backroundColor.index);
    case Color.green:
      print(backroundColor.index);
    case Color.blue:
      print(backroundColor.index);
    case Color.turk:
      print(backroundColor.index);
  }
}

enum Color {
  red,
  green,
  blue,
  turk,
}
