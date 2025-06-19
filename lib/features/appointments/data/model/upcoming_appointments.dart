class UpComingModel
{
  final String? upComingID;
  final String? upComingTitle;
  final String? upComingDateTime;
  final String? upComingLocation;

  UpComingModel({
    this.upComingID,
    this.upComingTitle, 
    this.upComingDateTime, 
    this.upComingLocation, 
    });

  factory UpComingModel.fromJson(Map<String, dynamic> json)
  {
    return UpComingModel(
      upComingID:  json['id'] as String,
      upComingTitle: json['title'] as String,
      upComingDateTime: json['dateTime'] as String,
      upComingLocation: json['location'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': upComingID,
      'title': upComingTitle,
      'dateTime': upComingDateTime,
      'location': upComingLocation,
    };
  }
  
}