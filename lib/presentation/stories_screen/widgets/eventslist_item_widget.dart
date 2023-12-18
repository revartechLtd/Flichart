import '../models/eventslist_item_model.dart';
import 'package:flichat/core/app_export.dart';
import 'package:flichat/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventslistItemWidget extends StatelessWidget {
  EventslistItemWidget(
    this.eventslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventslistItemModel eventslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 144.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: eventslistItemModelObj?.lIVEWeTheFest,
                  height: 144.v,
                  width: 147.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 20.v,
                  width: 54.h,
                  text: "lbl_live".tr,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.v,
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup9027,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            eventslistItemModelObj.lIVEWeTheFest1!,
            style: CustomTextStyles.titleSmallBlack90001,
          ),
          SizedBox(height: 6.v),
          Text(
            eventslistItemModelObj.price!,
            style: CustomTextStyles.labelLargeBluegray400,
          ),
        ],
      ),
    );
  }
}
