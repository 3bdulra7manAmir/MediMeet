class ApiFetchFailure
{
  final String message;
  final int? statusCode;

  ApiFetchFailure({this.message = 'An unexpected error occurred.', this.statusCode});

  @override
  String toString() => 'ApiFetchFailure(message: $message, statusCode: $statusCode)';
}
