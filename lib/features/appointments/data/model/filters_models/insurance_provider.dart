class InsuranceProviderModel
{
  final String? id;
  final String? title;

  InsuranceProviderModel({this.id, this.title});

  factory InsuranceProviderModel.fromJson(Map<String, dynamic> json)
  {
    return InsuranceProviderModel(
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