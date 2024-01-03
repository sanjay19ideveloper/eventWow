import 'bloc/contact_us_one_bloc.dart';
import 'models/contact_us_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/core/utils/validation_functions.dart';
import 'package:sanjay_s_application2/presentation/all_cities_photographer_page/all_cities_photographer_page.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_bottom_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_floating_button.dart';
import 'package:sanjay_s_application2/widgets/custom_radio_button.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class ContactUsOneScreen extends StatelessWidget {
  ContactUsOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactUsOneBloc>(
      create: (context) => ContactUsOneBloc(ContactUsOneState(
        contactUsOneModelObj: ContactUsOneModel(),
      ))
        ..add(ContactUsOneInitialEvent()),
      child: ContactUsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 13.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5.v),
                      _buildContactUsMessage(context),
                      SizedBox(height: 31.v),
                      _buildWhatsappContact(context),
                      SizedBox(height: 57.v),
                      CustomElevatedButton(
                        height: 47.v,
                        text: "lbl_submit".tr,
                        buttonStyle: CustomButtonStyles.fillBlueTL13,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallInterWhiteA700,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 46,
          width: 46,
          backgroundColor: appTheme.blue700,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup33324,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 36.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 23.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_contact_us".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUserBlack90001,
          margin: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildContactUsMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_send_us_a_message".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack9000114,
            ),
          ),
          SizedBox(height: 17.v),
          BlocSelector<ContactUsOneBloc, ContactUsOneState,
              TextEditingController?>(
            selector: (state) => state.messageController,
            builder: (context, messageController) {
              return CustomTextFormField(
                controller: messageController,
                hintText: "lbl_enter_your_name".tr,
                hintStyle: CustomTextStyles.titleSmallInterGray500,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 14.v,
                ),
              );
            },
          ),
          SizedBox(height: 14.v),
          BlocSelector<ContactUsOneBloc, ContactUsOneState,
              TextEditingController?>(
            selector: (state) => state.mobileNovalueController,
            builder: (context, mobileNovalueController) {
              return CustomTextFormField(
                controller: mobileNovalueController,
                hintText: "lbl_mobile_no2".tr,
                hintStyle: CustomTextStyles.titleSmallInterGray500,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 14.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsappContact(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "msg_preffered_method".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack9000114,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 131.h,
            ),
            child: BlocBuilder<ContactUsOneBloc, ContactUsOneState>(
              builder: (context, state) {
                return state.contactUsOneModelObj!.radioList.isNotEmpty
                    ? Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: CustomRadioButton(
                              text: "lbl_whatsapp".tr,
                              value: state.contactUsOneModelObj?.radioList[0] ??
                                  "",
                              groupValue: state.preferredMethodOfCommunication,
                              textStyle:
                                  CustomTextStyles.bodyMediumPoppinsBlack90001,
                              onChange: (value) {
                                context
                                    .read<ContactUsOneBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 41.h,
                              bottom: 5.v,
                            ),
                            child: CustomRadioButton(
                              text: "lbl_call".tr,
                              value: state.contactUsOneModelObj?.radioList[1] ??
                                  "",
                              groupValue: state.preferredMethodOfCommunication,
                              textStyle:
                                  CustomTextStyles.bodyMediumPoppinsBlack90001,
                              onChange: (value) {
                                context
                                    .read<ContactUsOneBloc>()
                                    .add(ChangeRadioButtonEvent(value: value));
                              },
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ),
          SizedBox(height: 23.v),
          BlocSelector<ContactUsOneBloc, ContactUsOneState,
              TextEditingController?>(
            selector: (state) => state.yourQueryvalueController,
            builder: (context, yourQueryvalueController) {
              return CustomTextFormField(
                controller: yourQueryvalueController,
                hintText: "lbl_your_query".tr,
                hintStyle: CustomTextStyles.titleSmallInterGray500,
                textInputAction: TextInputAction.done,
                maxLines: 11,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 15.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homepage:
        return AppRoutes.allCitiesPhotographerPage;
      case BottomBarEnum.Vendor:
        return "/";
      case BottomBarEnum.Einvites:
        return "/";
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Checklist:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.allCitiesPhotographerPage:
        return AllCitiesPhotographerPage();
      default:
        return DefaultWidget();
    }
  }
}
