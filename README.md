# AMap Web Service

[![pub package](https://img.shields.io/pub/v/amap_webservice.svg)](https://pub.dev/packages/amap_webservice)

A Flutter package that packaging amap web service.

## usage

To use this package, add ```amap_webservice``` as a dependency in your ```pubspec.yaml``` file.

### example

```dart
final response = await GeocodeService(
  apiKey: "YOUR KEY HERE",
).geocode("YOUR ADDRESS HERE");
```

```dart
final response = await GeocodeService(
  apiKey: "YOUR KEY HERE",
).reGeocode("YOUR LOCATION HERE");// (longitude,latitude)
```

See the `example` directory for a complete sample app.

