import '../../data/model/rating.dart';

abstract class RatingRepository
{
  Future<List<RatingModel>> getRatings();
}