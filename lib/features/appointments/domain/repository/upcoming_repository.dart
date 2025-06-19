import '../../data/model/upcoming_appointments.dart';

abstract class UpComingRepository
{
  Future<List<UpComingModel>> getUpComingAppointments();
}