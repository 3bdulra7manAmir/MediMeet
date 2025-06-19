import '../../data/model/appointment_info.dart';

abstract class DetailsRepository
{
  Future<List<DetailsModel>> getAppointmentDetails();
}