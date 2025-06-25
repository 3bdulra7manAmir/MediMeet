import '../../../domain/repository/filters_repo/rating_repository.dart';
import '../../datasources/filters_datasources/rating_local_data_source.dart';
import '../../model/filters_models/rating.dart';

class RatingRepositoryImpl implements RatingRepository
{
  final RatingLocalDataSource localDataSource;
  const RatingRepositoryImpl({required this.localDataSource});

  @override
  Future<List<RatingModel>> getRatings() async
  {
    try
    {
      return await localDataSource.getRatings();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }


  

  
}