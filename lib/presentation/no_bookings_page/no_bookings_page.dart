import 'bloc/no_bookings_bloc.dart';
import 'models/no_bookings_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NoBookingsPage extends StatefulWidget {
  const NoBookingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  NoBookingsPageState createState() => NoBookingsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoBookingsBloc>(
      create: (context) => NoBookingsBloc(NoBookingsState(
        noBookingsModelObj: NoBookingsModel(),
      ))
        ..add(NoBookingsInitialEvent()),
      child: NoBookingsPage(),
    );
  }
}

class NoBookingsPageState extends State<NoBookingsPage>
    with AutomaticKeepAliveClientMixin<NoBookingsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoBookingsBloc, NoBookingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 65.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 24.h,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUploadRafiki1,
                          height: 331.adaptSize,
                          width: 331.adaptSize,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_you_have_no_past".tr,
                          style: CustomTextStyles.titleMediumErrorContainer,
                        ),
                        SizedBox(height: 13.v),
                        Opacity(
                          opacity: 0.7,
                          child: Container(
                            width: 298.h,
                            margin: EdgeInsets.only(
                              left: 19.h,
                              right: 13.h,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dolor".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeErrorContainer
                                  .copyWith(
                                height: 1.75,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 94.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 72.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "lbl_photographer".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Text(
                                  "lbl_decoration".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
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
}
