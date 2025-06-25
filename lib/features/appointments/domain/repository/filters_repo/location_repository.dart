import '../../../data/model/filters_models/location.dart';

abstract class LocationFilterRepository
{
  Future<List<LocationFilterModel>> getLocations();
}