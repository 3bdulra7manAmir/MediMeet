import '../../data/model/specialty.dart';

abstract class SpecialtyRepository
{
  Future<List<SpecialtyModel>> getSpecialtys();
}