class Address {
  String? unit;
  String? streetNumber;
  String streetName;
  String city;
  String province;
  String postalCode;
  String country;
  double? latitude;
  double? longitude;

  Address({
    this.unit,
    this.streetNumber,
    required this.streetName,
    required this.city,
    required this.province,
    required this.postalCode,
    required this.country,
    this.latitude,
    this.longitude,
  });
}
