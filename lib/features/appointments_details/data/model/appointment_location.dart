class LocationModel
{
  final String? billID;
  final String? billTitle;
  final double? billLat;
  final double? billLng;

  LocationModel({
    this.billID,
    this.billTitle, 
    this.billLat, 
    this.billLng, 
    });

  factory LocationModel.fromJson(Map<String, dynamic> json)
  {
    return LocationModel(
      billID:  json['id']?.toString(),
      billTitle: json['title'] as String?,
      billLat: double.tryParse(json['lat'].toString()),
      billLng: double.tryParse(json['lng'].toString()),
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