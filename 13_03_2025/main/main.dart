import 'dart:io';

import '../model/address.dart';
import '../model/city.dart';

void main() {
  String state;
  String city_name;
  int number;
  String road;
  City city;
  Address address;

  print('Write the name of your state:');
  String? answer = stdin.readLineSync()!;
  state = string_null_fixer(answer);

  print('Write the name of your city:');
  answer = stdin.readLineSync()!;
  city_name = string_null_fixer(answer);

  print('Write the name of your road:');
  answer = stdin.readLineSync()!;
  road = string_null_fixer(answer);

  print('Write the number of your house:');
  answer = stdin.readLineSync();
  number = int_null_fixer(answer!);

  city = City(name: city_name, state: state);
  address = Address(number: number, road: road, city: city);

  address.print_address();
}

String string_null_fixer(String? answer) {
  String? information = answer;
  while (information == null) {
    information = replace_invalid_value();
  }
  return information;
}

int int_null_fixer(String? answer) {
  int information;
  String? value = string_null_fixer(answer);
  try {
    information = int.parse(value);
    return information;
  } catch (e) {
    value = replace_invalid_value();
    return int_null_fixer(value);
  }
}

String? replace_invalid_value(){
  print('invalid data, please try again');
  String? information = stdin.readLineSync()!;
  return information;
}
