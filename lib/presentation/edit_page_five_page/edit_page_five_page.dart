import 'bloc/edit_page_five_bloc.dart';
import 'models/edit_page_five_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EditPageFivePage extends StatefulWidget {
  const EditPageFivePage({Key? key})
      : super(
          key: key,
        );

  @override
  EditPageFivePageState createState() => EditPageFivePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditPageFiveBloc>(
      create: (context) => EditPageFiveBloc(EditPageFiveState(
        editPageFiveModelObj: EditPageFiveModel(),
      ))
        ..add(EditPageFiveInitialEvent()),
      child: EditPageFivePage(),
    );
  }
}

class EditPageFivePageState extends State<EditPageFivePage>
    with AutomaticKeepAliveClientMixin<EditPageFivePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPageFiveBloc, EditPageFiveState>(
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
                        _buildImage(context),
                        SizedBox(height: 37.v),
                        SizedBox(
                          height: 58.v,
                          width: 271.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 58.v,
                                  width: 271.h,
                                  padding: EdgeInsets.all(14.h),
                                  decoration:
                                      AppDecoration.outlineIndigoF.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    decoration:
                                        IconButtonStyleHelper.fillIndigoA,
                                    alignment: Alignment.centerRight,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    "msg_customise_the_card".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles.titleMediumWhiteA700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
  Widget _buildImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle42584,
      height: 452.v,
      width: 334.h,
      radius: BorderRadius.circular(
        16.h,
      ),
    );
  }
}
