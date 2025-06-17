extension GetStringUtils on String?
{
  bool get isLanguage => this != null && RegExp(r'^(?!.*\b(English|Arabic|الانجليزية|العربية)\b)([a-zA-Z]+|[\u0600-\u06FF]+)$',
  caseSensitive: false,
  ).hasMatch(this!);
}
