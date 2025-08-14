import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/widgets/shimmer_item.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard(
      {super.key, this.paddingHorizontal = 5, this.paddingVertical = 5, this.height, this.borderRadius = 20,});

  final double paddingHorizontal;
  final double paddingVertical;
  final double? height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ShimmerItem(paddingHorizontal: paddingHorizontal,
              paddingVertical: paddingVertical,
              height: height,
              borderRadius: borderRadius);
        },
      ),
    );
  }
}
