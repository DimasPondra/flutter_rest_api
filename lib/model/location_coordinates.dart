class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  factory LocationCoordinates.fromMap(Map<String, dynamic> json) {
    return LocationCoordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
