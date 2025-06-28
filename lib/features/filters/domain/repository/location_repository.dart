import '../../data/model/location.dart';

abstract class LocationFilterRepository
{
  Future<List<LocationFilterModel>> getLocations();
}