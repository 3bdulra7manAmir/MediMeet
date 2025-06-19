import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchMapsUrl(LatLng location) async
{
  const String baseGoogleMapsURL = 'https://www.google.com/maps/dir/?api=1&destination=';
  final Uri googleMapsUri = Uri.parse('$baseGoogleMapsURL${location.latitude},${location.longitude}',);

  if (await canLaunchUrl(googleMapsUri))
  {
    await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
  }
  else
  {
    throw 'Could not launch $googleMapsUri';
  }
}
