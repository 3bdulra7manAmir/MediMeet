class LocationModel
{
  final String? billID;
  final String? billTitle;
  final String? billLat;
  final String? billLng;

  LocationModel({
    this.billID,
    this.billTitle, 
    this.billLat, 
    this.billLng, 
    });

  factory LocationModel.fromJson(Map<String, dynamic> json)
  {
    return LocationModel(
      billID:  json['id'] as String,
      billTitle: json['title'] as String,
      billLat: json['lat'] as String,
      billLng: json['lng'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': billID,
      'title': billTitle,
      'lat': billLat,
      'lng': billLng,
    };
  }
  
}