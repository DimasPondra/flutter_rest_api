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
}
