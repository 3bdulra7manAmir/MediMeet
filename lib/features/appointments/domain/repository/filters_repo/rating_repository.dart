import '../../../data/model/filters_models/rating.dart';

abstract class RatingRepository
{
  Future<List<RatingModel>> getRatings();
}