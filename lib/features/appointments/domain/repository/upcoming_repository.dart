import '../entity/upcoming_appointments_entity.dart';

abstract class UpComingRepository
{
  Future<UpComingEntity> getUpComingAppointments();
}