enum Color { red, green, yellow }
enum Planet {
  mercury,
  venus,
  earth,
  mars,
  jupiter,
  saturn,
  uranus,
  neptune,
}
enum TrafficLight {
  red,
  yellow,
  green,
}

extension TrafficLightMethods on TrafficLight {
  bool get isStop => this == TrafficLight.red;
  bool get isCaution => this == TrafficLight.yellow;
  bool get isGo => this == TrafficLight.green;
}

void main(List<String> args) {
  var selectedColor = Color.red;
  switch (selectedColor) {
    case Color.green:
      print("Selected color is green");
      break;
    case Color.red:
      print("Selected color is red");
      break;
    case Color.yellow:
      print("Selected color is yellow");
      break;
    default:
    print("Selected color is Non");
  }

    var earthOrdinal = Planet.earth.index;
  print('Earth is at index $earthOrdinal');

  var marsName = Planet.values[3];
  print('Planet at index 3 is $marsName');

  var light = TrafficLight.red;
  print('Is it a stop light? ${light.isStop}');
  print('Is it a caution light? ${light.isCaution}');
  print('Is it a go light? ${light.isGo}');
}
