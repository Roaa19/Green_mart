import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  const BuildImage({super.key, required this.path, this.width, this.height});
  final String path;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (path.startsWith('http')) {
      return Image.network(path, width: width, height: height);
    } else {
      return Image.asset(path, width: width, height: height);
    }
  }
}
