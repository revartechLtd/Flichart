import '../models/livelist_item_model.dart';
import 'package:flichat/core/app_export.dart';
import 'package:flichat/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LivelistItemWidget extends StatelessWidget {
  LivelistItemWidget(
    this.livelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LivelistItemModel livelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
              child: CustomImageView(
                imagePath: livelistItemModelObj?.send,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              livelistItemModelObj.newPost!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
