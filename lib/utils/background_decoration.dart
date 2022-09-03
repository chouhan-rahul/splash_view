import 'package:flutter/material.dart';

class BackgroundImageDecoration extends DecorationImage {
  const BackgroundImageDecoration({
    required ImageProvider<Object> image,
    BoxFit fit = BoxFit.cover,
    ColorFilter? colorFilter,
    double opacity = 1.0,
  }) : super(
          image: image,
          fit: fit,
          colorFilter: colorFilter,
          opacity: opacity,
        );
}
