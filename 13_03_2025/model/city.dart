class City {
  String name;
  String state;

  City({required this.name, required this.state});

  void print_city() {
    print('name: $name');
    print('state: $state');
  }
}
