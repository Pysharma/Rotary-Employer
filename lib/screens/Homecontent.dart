class Categories{
  static final items = [
    Item(id: 1,name: "Computer\nEngineering", image: 'assets/computer 1.png'),
    Item(id: 2,name: "Civil\nEngineering", image: 'assets/engineer (1) 1.png'),
    Item(id: 3,name: "Part-time/\nFull time", image: 'assets/part-time 1.png'),
  ];
}

class Item{
  final int id;
  final String name;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.image,
  });

}


class Locations{
  static final items = [
    Item1(id: 1,name: "Banglore", image: 'assets/computer 1.png'),
    Item1(id: 2,name: "Mumbai", image: 'assets/buildings 1.png'),
    Item1(id: 3,name: "Delhi", image: 'assets/buildings 3.png'),
  ];
}

class Item1{
  final int id;
  final String name;
  final String image;

  Item1({
    required this.id,
    required this.name,
    required this.image,
  });

}



class Strings {
  Strings._();

  static const String logindesc = 'Make job offers directly from Rotary Jobs, highlighting people with the best skillsets for your posittion. Inform them about available positions and urge them to apply immediately from their phones.';

}


