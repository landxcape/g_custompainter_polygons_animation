import 'package:flutter/material.dart';
import 'package:g_custompainter_polygons_animation/painter/polygon_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: PolygonPainter(sides: 4),
          child: SizedBox(
            height: size.width,
            width: size.width,
          ),
        ),
      ),
    );
  }
}
