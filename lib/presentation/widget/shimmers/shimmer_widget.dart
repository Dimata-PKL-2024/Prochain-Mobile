import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends GetResponsiveView {
  ShimmerWidget({
    super.key,
    this.width,
    this.height,
    this.isLoading = false,
    this.child,
    this.margin,
  });

  final double? width;
  final double? height;
  final bool? isLoading;
  final Widget? child;
  final dynamic margin;

  @override
  Widget build(BuildContext context) {
    if (isLoading!) {
      return Shimmer.fromColors(
        baseColor: colorGrey,
        highlightColor: colorGreyLight,
        child: Container(
          width: width,
          height: height,
          margin: margin,
          decoration: BoxDecoration(
            color: colorGrey.withOpacity(0.5),
            borderRadius: borderRadiusDefault,
          ),
        ),
      );
    } else {
      return child!;
    }
  }
}
