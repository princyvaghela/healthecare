// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
//
// class MapPage extends StatefulWidget {
//   const MapPage({super.key});
//
//   @override
//   State<MapPage> createState() => _MapPageState();
// }
//
// class _MapPageState extends State<MapPage> {
//   Location _locationController = Location();
//
//   static const LatLng _pGooglePlex = LatLng(20.5937, 78.9629);
//   LatLng? _currentP = null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: _pGooglePlex,
//           zoom: 13,
//         ),
//         markers: {
//           Marker(
//               markerId: MarkerId("_currentLocation"),
//               icon: BitmapDescriptor.defaultMarker,
//               position: _pGooglePlex),
//         },
//       ),
//     );
//   }
//
//   Future<void> getUpdatesLocations() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//
//     _serviceEnabled = await _locationController.serviceEnabled();
//
//     if (_serviceEnabled) {
//       _serviceEnabled = await _locationController.requestService();
//     } else {
//       return;
//     }
//
//     _permissionGranted = await _locationController.hasPermission();
//
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await _locationController.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     _locationController.onLocationChanged
//         .listen((LocationData currentLocation) {
//       if (currentLocation.latitude != null &&
//           currentLocation.longitude != null) {
//         setState(() {
//           _currentP = LatLng(currentLocation.latitude!, currentLocation.longitude!);
//         });
//       }
//     });
//   }
// }
