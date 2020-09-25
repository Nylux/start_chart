import 'dart:math';
import 'package:flutter/material.dart';
import './renderer/pie_renderer.dart';

class PieChart extends StatelessWidget {
  PieChart({
    @required this.percentage,
    this.size = const Size(150, 150),
    this.textColor = Colors.blueGrey,
    this.textScaleFactor = 1.0,
    this.strokeWidth = 10,
    this.bgColor = Colors.white,
    this.fillColor = Colors.green,
  }) : assert(percentage != null);

  final Size size;
  final int percentage;
  final Color textColor;
  final double textScaleFactor;
  final double strokeWidth;
  final Color bgColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return new LimitedBox(
      child: new CustomPaint(
        size: size,
        painter: new PieChartPainter(
          percentage: this.percentage,
          textColor: this.textColor,
          textScaleFactor: this.textScaleFactor,
          strokeWidth: this.strokeWidth,
          bgColor: this.bgColor,
          fillColor: this.fillColor,
        ),
      ), // CustomPaint
    ); // LimitedBox
  }
}
