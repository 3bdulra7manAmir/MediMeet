class SpecialtyModel
{
  final String? id;
  final String? title;

  SpecialtyModel({this.id, this.title});

  factory SpecialtyModel.fromJson(Map<String, dynamic> json)
  {
    return SpecialtyModel(
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