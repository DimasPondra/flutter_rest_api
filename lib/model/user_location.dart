import 'package:tutorial_rest_api/model/location_coordinates.dart';
import 'package:tutorial_rest_api/model/location_street.dart';
import 'package:tutorial_rest_api/model/location_timezone.dart';

class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimezone timezone;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final postcode = json['postcode'].toString();

    final street = LocationStreet.fromMap(json['street']);

    final coordinates = LocationCoordinates.fromMap(json['coordinates']);

    final timezone = LocationTimezone.fromMap(json['timezone']);

    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: postcode,
      street: street,
      coordinates: coordinates,
      timezone: timezone,
    );
  }
}
