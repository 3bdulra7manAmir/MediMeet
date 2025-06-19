class DetailsModel
{
  final String? detailsID;
  final String? detailsTitle;
  final String? detailsDateTime;
  final String? detailsCategory;

  DetailsModel({
    this.detailsID,
    this.detailsTitle, 
    this.detailsDateTime, 
    this.detailsCategory, 
    });

  factory DetailsModel.fromJson(Map<String, dynamic> json)
  {
    return DetailsModel(
      detailsID: json['id']?.toString(),
      detailsTitle: json['title'] as String?,
      detailsDateTime: json['dateTime'] as String?,
      detailsCategory: json['category'] as String?,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': detailsID,
      'title': detailsTitle,
      'dateTime': detailsDateTime,
      'category': detailsCategory,
    };
  }
  
}