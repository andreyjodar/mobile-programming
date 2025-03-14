import 'city.dart';

class Address {
  int number;
  String road;
  City city;

  Address({required this.number, required this.road, required this.city});

  void print_address() {
    print('number: $number');
    print('road: $road');
    this.city.print_city();
  }
}
