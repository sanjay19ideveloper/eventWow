import 'bloc/no_bookings_one_bloc.dart';
import 'models/no_bookings_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NoBookingsOnePage extends StatefulWidget {
  const NoBookingsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  NoBookingsOnePageState createState() => NoBookingsOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoBookingsOneBloc>(
      create: (context) => NoBookingsOneBloc(NoBookingsOneState(
        noBookingsOneModelObj: NoBookingsOneModel(),
      ))
        ..add(NoBookingsOneInitialEvent()),
      child: NoBookingsOnePage(),
    );
  }
}

class NoBookingsOnePageState extends State<NoBookingsOnePage>
    with AutomaticKeepAliveClientMixin<NoBookingsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoBookingsOneBloc, NoBookingsOneState>(
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
