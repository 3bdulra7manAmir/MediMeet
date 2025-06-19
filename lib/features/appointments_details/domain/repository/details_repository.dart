import '../../data/model/details_model.dart';

abstract class Detailsepository
{
  Future<List<DetailsModel>> getAppointmentDetails();
}