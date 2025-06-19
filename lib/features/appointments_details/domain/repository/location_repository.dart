import '../../data/model/appointment_location.dart';

abstract class LocationRepository
{
  Future<List<LocationModel>> getLocationDetails();
}