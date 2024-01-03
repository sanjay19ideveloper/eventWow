import 'bloc/contact_us_bloc.dart';
import 'models/contact_us_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/core/utils/validation_functions.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:sanjay_s_application2/widgets/custom_radio_button.dart';
import 'package:sanjay_s_application2/widgets/custom_text_form_field.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactUsBloc>(
      create: (context) => ContactUsBloc(ContactUsState(
        contactUsModelObj: ContactUsModel(),
      ))
        ..add(ContactUsInitialEvent()),
      child: ContactUsScreen(),
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
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 35.v,
            ),
            child: Column(
              children: [
                _buildMessageColumn(context),
                SizedBox(height: 30.v),
                BlocSelector<ContactUsBloc, ContactUsState,
                    TextEditingController?>(
                  selector: (state) => state.mobileNoController,
                  builder: (context, mobileNoController) {
                    return CustomTextFormField(
                      controller: mobileNoController,
                      hintText: "lbl_mobile_no".tr,
                      hintStyle: CustomTextStyles.bodySmallGray40002,
                      textInputType: TextInputType.phone,
                      validator: (value) {
                        if (!isValidPhone(value)) {
                          return "err_msg_please_enter_valid_phone_number".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 16.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      filled: false,
                    );
                  },
                ),
                SizedBox(height: 36.v),
                _buildWhatsappColumn(context),
                Spacer(),
                SizedBox(height: 64.v),
                CustomElevatedButton(
                  text: "lbl_submit".tr.toUpperCase(),
                  margin: EdgeInsets.symmetric(horizontal: 27.h),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_contact_us".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "msg_send_us_a_message".tr,
            style: CustomTextStyles.titleSmallBlack9000114_1,
          ),
        ),
        SizedBox(height: 12.v),
        BlocSelector<ContactUsBloc, ContactUsState, TextEditingController?>(
          selector: (state) => state.messageController,
          builder: (context, messageController) {
            return CustomTextFormField(
              controller: messageController,
              hintText: "lbl_enter_your_name".tr,
              hintStyle: CustomTextStyles.bodySmallGray40002,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 16.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
              filled: false,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWhatsappColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "msg_preffered_method".tr,
            style: CustomTextStyles.titleSmallBlack9000114_1,
          ),
        ),
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            right: 127.h,
          ),
          child: BlocBuilder<ContactUsBloc, ContactUsState>(
            builder: (context, state) {
              return state.contactUsModelObj!.radioList.isNotEmpty
                  ? Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: CustomRadioButton(
                            text: "lbl_whatsapp".tr,
                            value: state.contactUsModelObj?.radioList[0] ?? "",
                            groupValue: state.radioGroup,
                            textStyle: CustomTextStyles.bodyMediumBlack90001_1,
                            onChange: (value) {
                              context
                                  .read<ContactUsBloc>()
                                  .add(ChangeRadioButtonEvent(value: value));
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 47.h,
                            bottom: 1.v,
                          ),
                          child: CustomRadioButton(
                            text: "lbl_call".tr,
                            value: state.contactUsModelObj?.radioList[1] ?? "",
                            groupValue: state.radioGroup,
                            textStyle: CustomTextStyles.bodyMediumBlack90001_1,
                            onChange: (value) {
                              context
                                  .read<ContactUsBloc>()
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
        SizedBox(height: 24.v),
        BlocSelector<ContactUsBloc, ContactUsState, TextEditingController?>(
          selector: (state) => state.yourQueryController,
          builder: (context, yourQueryController) {
            return CustomTextFormField(
              controller: yourQueryController,
              hintText: "lbl_your_query".tr,
              hintStyle: CustomTextStyles.bodySmallGray40002,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 16.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineGray,
              filled: false,
            );
          },
        ),
      ],
    );
  }
}
