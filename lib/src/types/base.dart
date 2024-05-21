import 'package:latlong2/latlong.dart';

String? stringNullableFromJson(dynamic value) {
  return (value is String?) ? value : null;
}

String latLngNullableToJson(LatLng? latLng) {
  if (latLng != null) {
    return "${latLng.longitude.toStringAsFixed(6)},"
        "${latLng.latitude.toStringAsFixed(6)}";
  }
  throw Exception("Convert 'LatLng' to 'String' failed.");
}

LatLng? latLngNullableFromJson(dynamic value) {
  if (value is String) {
    final list = value.split(",");
    if (list.length == 2) {
      final longitude = double.parse(list[0]);
      final latitude = double.parse(list[1]);
      return LatLng(latitude, longitude);
    }
  }
  throw Exception("Convert 'String' to 'LatLng' failed.");
}
