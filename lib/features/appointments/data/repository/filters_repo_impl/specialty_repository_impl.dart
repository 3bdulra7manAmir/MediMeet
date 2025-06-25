import '../../../domain/repository/filters_repo/specialty_repository.dart';
import '../../datasources/filters_datasources/specialty_local_data_source.dart';
import '../../model/filters_models/specialty.dart';

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