import 'bloc/share_the_card_bloc.dart';
import 'models/share_the_card_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShareTheCardBottomsheet extends StatelessWidget {
  const ShareTheCardBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareTheCardBloc>(
      create: (context) => ShareTheCardBloc(ShareTheCardState(
        shareTheCardModelObj: ShareTheCardModel(),
      ))
        ..add(ShareTheCardInitialEvent()),
      child: ShareTheCardBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 2.v,
            width: 26.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              borderRadius: BorderRadius.circular(
                1.h,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Text(
            "msg_guest_comments_0".tr,
            style: CustomTextStyles.headlineSmallMedium,
          ),
          Spacer(
            flex: 43,
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              width: 268.h,
              margin: EdgeInsets.only(
                left: 34.h,
                right: 33.h,
              ),
              child: Text(
                "msg_no_comments_yet".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeErrorContainer.copyWith(
                  height: 1.75,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 56,
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: BlocSelector<ShareTheCardBloc, ShareTheCardState,
                      TextEditingController?>(
                    selector: (state) => state.messageController,
                    builder: (context, messageController) {
                      return CustomTextFormField(
                        controller: messageController,
                        hintText: "lbl_type_a_message".tr,
                        hintStyle: CustomTextStyles.bodyLargeGray50003,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 7.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray20001,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: CustomIconButton(
                  height: 35.v,
                  width: 41.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup469,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
