import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;

  Location({this.lat, this.long});

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
