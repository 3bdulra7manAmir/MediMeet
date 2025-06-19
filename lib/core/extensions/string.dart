extension AppointmentDateFormat on String
{
  /// Returns abbreviated month (e.g., "Jun")
  String get toShortMonth
  {
    try
    {
      final datePart = split('-').first.trim();
      final parts = datePart.split(',');
      if (parts.length < 2) return '';
      final dateTokens = parts[1].trim().split(' ');
      return dateTokens.first.substring(0, 3);
    }
    catch (_)
    {
      return '';
    }
  }

  /// Returns day (e.g., "3")
  String get toDay
  {
    try
    {
      final datePart = split('-').first.trim();
      final parts = datePart.split(',');
      if (parts.length < 2) return '';
      final dateTokens = parts[1].trim().split(' ');
      return dateTokens.length > 1 ? dateTokens[1] : '';
    }
    catch (_)
    {
      return '';
    }
  }

  /// Returns only the time part (e.g., "4:00 PM")
  String get toTime
  {
    try
    {
      return split('-').last.trim();
    }
    catch (_)
    {
      return '';
    }
  }
}


extension SmartDoubleFormat on double
{
  String cleanFormat() => this % 1 == 0 ? toInt().toString() : toStringAsFixed(1);
}
