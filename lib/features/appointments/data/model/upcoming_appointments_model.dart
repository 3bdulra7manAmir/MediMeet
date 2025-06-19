class UpComingAppointmentsModel
{
  final int? upComingAppointmentID;
  final String? upComingAppointmentTitle;
  final String? upComingAppointmentDateTime;
  final String? upComingAppointmentLocation;

  UpComingAppointmentsModel({
    this.upComingAppointmentID,
    this.upComingAppointmentTitle, 
    this.upComingAppointmentDateTime, 
    this.upComingAppointmentLocation, 
    });

  factory UpComingAppointmentsModel.fromJson(Map<String, dynamic> json)
  {
    return UpComingAppointmentsModel(
      upComingAppointmentID:  json['id'],
      upComingAppointmentTitle: json['title'] as String,
      upComingAppointmentDateTime: json['dateTime'] as String,
      upComingAppointmentLocation: json['location'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': upComingAppointmentID,
      'title': upComingAppointmentTitle,
      'dateTime': upComingAppointmentDateTime,
      'location': upComingAppointmentLocation,
    };
  }
  
}