class LocationFilterModel
{
  final String? id;
  final String? title;

  LocationFilterModel({this.id, this.title});

  factory LocationFilterModel.fromJson(Map<String, dynamic> json)
  {
    return LocationFilterModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );
  }
  
  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'title': title,
    };
  }
}