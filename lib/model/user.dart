import 'package:tutorial_rest_api/model/user_dob.dart';
import 'package:tutorial_rest_api/model/user_location.dart';
import 'package:tutorial_rest_api/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
  });

  factory User.fromMap(Map<String, dynamic> json) {
    final name = UserName.fromMap(json['name']);

    final dob = UserDob.fromMap(json['dob']);

    final location = UserLocation.fromMap(json['location']);

    return User(
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      cell: json['cell'],
      nat: json['nat'],
      name: name,
      dob: dob,
      location: location,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
