class ClinicTypeModel
{
  final String? id;
  final String? title;

  ClinicTypeModel({this.id,  this.title});

  factory ClinicTypeModel.fromJson(Map<String, dynamic> json)
  {
    return ClinicTypeModel(
      id: json['id']?.toString(),
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