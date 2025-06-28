import '../../domain/repository/rating_repository.dart';
import '../datasource/rating_local_data_source.dart';
import '../model/rating.dart';

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