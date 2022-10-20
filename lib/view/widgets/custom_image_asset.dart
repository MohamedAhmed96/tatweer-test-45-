import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  final String path;
  final BoxFit? fit;
  const CustomImageAsset({
    Key? key,
    required this.path,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      errorBuilder: (context, error, stackTrace) {
        return const Center(child: CircularProgressIndicator());
      },
      fit: fit ?? BoxFit.fill,
    );
  }
}
