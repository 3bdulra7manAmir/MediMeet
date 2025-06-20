class LocationModel
{
  final String? locationID;
  final String? locationTitle;
  final double? locationLat;
  final double? locationLng;

  LocationModel({
    this.locationID,
    this.locationTitle, 
    this.locationLat, 
    this.locationLng, 
    });

  factory LocationModel.fromJson(Map<String, dynamic> json)
  {
    return LocationModel(
      locationID:  json['id']?.toString(),
      locationTitle: json['title'] as String?,
      locationLat: double.tryParse(json['lat'].toString()),
      locationLng: double.tryParse(json['lng'].toString()),
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': locationID,
      'title': locationTitle,
      'lat': locationLat,
      'lng': locationLng,
    };
  }
  
}