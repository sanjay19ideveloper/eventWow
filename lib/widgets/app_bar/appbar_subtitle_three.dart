import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitleThree extends StatelessWidget {
  AppbarSubtitleThree({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.7,
          child: Text(
            text,
            style: CustomTextStyles.bodySmallBlack90001_1.copyWith(
              color: appTheme.black90001.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
