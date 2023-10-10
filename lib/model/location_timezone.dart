class LocationTimezone {
  final String offset;
  final String description;

  LocationTimezone({
    required this.offset,
    required this.description,
  });

  factory LocationTimezone.fromMap(Map<String, dynamic> json) {
    return LocationTimezone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
