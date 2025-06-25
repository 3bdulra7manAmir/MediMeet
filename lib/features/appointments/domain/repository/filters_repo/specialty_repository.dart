import '../../../data/model/filters_models/specialty.dart';

abstract class SpecialtyRepository
{
  Future<List<SpecialtyModel>> getSpecialtys();
}