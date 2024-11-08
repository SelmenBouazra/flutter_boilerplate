
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_config.dart';


class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.borderRadius = 8
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final double borderRadius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        panEnabled: false, // Set it to false to prevent panning.
        minScale: 0.5,
        maxScale: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius.r),
          child: CachedNetworkImage(
            imageUrl: AppConfig.shared.imageUrl + imageUrl,
            height: height,
            width: width,
            fit: fit,
            placeholder: (context, error) => Image.asset(
              'assets/images/parkingCover.png',
              fit: BoxFit.fill,
            ),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/parkingCover.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
