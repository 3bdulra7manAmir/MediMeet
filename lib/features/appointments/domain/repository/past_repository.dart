import '../../data/model/past_appointments.dart';

abstract class PastRepository
{
  Future<List<PastModel>> getPastAppointments();
}