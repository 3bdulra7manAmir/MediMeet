class RatingModel
{
  final String? id;
  final String? rateValue;
  final String? rateText;

  RatingModel({this.id, this.rateValue, this.rateText});

  factory RatingModel.fromJson(Map<String, dynamic> json)
  {
    return RatingModel(
      id: json['id']?.toString(),
      rateValue: json['rate_value'] as String?,
      rateText: json['rate_text'] as String?,
    );
  }
  
  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'rate_value': rateValue,
      'rate_text': rateText,
    };
  }
}