import 'package:google_maps_flutter/google_maps_flutter.dart';

// Global variables used throughout the app
String userName = "";

// Google Maps API key
String googleMapKey = "paste your key here";

// Initial camera position for Google Maps
const CameraPosition googlePlexInitialPosition = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);
