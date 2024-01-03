import 'bloc/edit_page_six_bloc.dart';
import 'models/edit_page_six_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class EditPageSixPage extends StatefulWidget {
  const EditPageSixPage({Key? key})
      : super(
          key: key,
        );

  @override
  EditPageSixPageState createState() => EditPageSixPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditPageSixBloc>(
      create: (context) => EditPageSixBloc(EditPageSixState(
        editPageSixModelObj: EditPageSixModel(),
      ))
        ..add(EditPageSixInitialEvent()),
      child: EditPageSixPage(),
    );
  }
}

class EditPageSixPageState extends State<EditPageSixPage>
    with AutomaticKeepAliveClientMixin<EditPageSixPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPageSixBloc, EditPageSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle42581,
                          height: 452.v,
                          width: 334.h,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                        SizedBox(height: 27.v),
                        _buildSaveDraftRow(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSaveDraftRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: _buildCloseColumn(
              context,
              continueText: "lbl_edit".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 4.v,
            ),
            child: _buildCloseColumn(
              context,
              continueText: "lbl_size".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgExpand2,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 6.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_undo".tr.toUpperCase(),
                  style: CustomTextStyles.labelSmallPrimary,
                ),
              ],
            ),
          ),
          CustomOutlinedButton(
            height: 39.v,
            width: 94.h,
            text: "lbl_save_draft".tr.toUpperCase(),
            margin: EdgeInsets.only(left: 18.h),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL7,
            buttonTextStyle: CustomTextStyles.labelMediumPrimary,
          ),
          CustomElevatedButton(
            height: 39.v,
            width: 94.h,
            text: "lbl_next".tr.toUpperCase(),
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.outlineIndigoFTL7,
            buttonTextStyle: CustomTextStyles.labelMedium_1,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCloseColumn(
    BuildContext context, {
    required String continueText,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 22.adaptSize,
          width: 22.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgClose,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          continueText,
          style: CustomTextStyles.labelSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
