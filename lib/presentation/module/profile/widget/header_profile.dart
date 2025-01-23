import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/utils/asset_util.dart';
import 'package:prochain/presentation/module/profile/controller/profile_controller.dart';

class HeaderProfileWidget extends GetResponsiveView<ProfileController> {
  HeaderProfileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: marginSm),
        Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: marginMd),
          decoration: BoxDecoration(
            color: colorGreyLight,
            borderRadius: borderRadiusXs,
            image: DecorationImage(
              image: AssetImage(
                AssetUtil().path(
                  path: 'background/background.png',
                ),
              ),
              filterQuality: FilterQuality.low,
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: colorBlack.withOpacity(0.5), //withvalue error
              borderRadius: borderRadiusXs,
            ),
            child: Container(
              margin: EdgeInsets.all(marginLg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '-',
                              style: Get.textTheme.bodySmall!.merge(TextStyle(
                                  color: colorWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                            ),
                            const SizedBox(height: 5),
                            Text('Admin',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: Get.textTheme.titleSmall!.merge(
                                    TextStyle(
                                        color: colorWhite, fontSize: 14))),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        foregroundColor: colorGreyLight,
                        backgroundColor: colorGreyLight,
                        radius: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorGreyLight,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(AssetUtil()
                                        .path(path: 'icon/icon-profile.png'))
                                    as ImageProvider,
                                filterQuality: FilterQuality.low,
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: marginXs),
      ],
    );
  }
}
