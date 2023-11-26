import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/modules/map/controllers/map_controller.dart'
    as getController;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      // Use the recommended flutter_map_cancellable_tile_provider package to
      // support the cancellation of loading tiles.
      tileProvider: CancellableNetworkTileProvider(),
    );

class MapView extends GetView<getController.MapController> {
  const MapView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Карта')),
        body: FlutterMap(
          options: MapOptions(
            initialCenter: const LatLng(56.5, 60.35),
            initialZoom: 5,
            cameraConstraint: CameraConstraint.contain(
              bounds: LatLngBounds(
                const LatLng(-90, -180),
                const LatLng(90, 180),
              ),
            ),
          ),
          children: [
            openStreetMapTileLayer,
          ],
        ));
  }
}
