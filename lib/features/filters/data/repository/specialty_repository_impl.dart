import '../../domain/repository/specialty_repository.dart';
import '../datasource/specialty_local_data_source.dart';
import '../model/specialty.dart';

class SpecialtyRepositoryImpl implements SpecialtyRepository
{
  final SpecialtyLocalDataSource localDataSource;
  const SpecialtyRepositoryImpl({required this.localDataSource});

  @override
  Future<List<SpecialtyModel>> getSpecialtys() async
  {
    try
    {
      return await localDataSource.getSpecialtys();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }
}