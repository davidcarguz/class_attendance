class Student {

  final String name;
  bool isPresent;

  Student({required this.name, this.isPresent = false});

  void changePresenceStatus () {
    isPresent = !isPresent;
  }

}