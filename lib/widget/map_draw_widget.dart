import 'package:flutter/material.dart';
import 'package:map_polyline_draw/map_polyline_draw.dart';

class MapDrawWidget extends StatelessWidget {
  const MapDrawWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MapPolyLineDraw(
      apiKey: "AIzaSyCVZCv_Dhw1co7k_t1TD5duycjL_mSI8Co",
      firstPoint: MapPoint(11.5760445, 104.9208625),
      secondPoint: MapPoint(10.988019, 104.7809549),
    );
  }
}
