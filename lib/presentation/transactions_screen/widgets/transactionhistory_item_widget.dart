import '../models/transactionhistory_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TransactionhistoryItemWidget extends StatelessWidget {
  TransactionhistoryItemWidget(
    this.transactionhistoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionhistoryItemModel transactionhistoryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(19.h),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder29,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowUp,
                height: 6.v,
                width: 22.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 12.v,
                width: 20.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgShapePrimary,
                height: 2.v,
                width: 22.h,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 8.v,
            bottom: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionhistoryItemModelObj.bankTransferText!,
                style: CustomTextStyles.bodyLargeGray900dd,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  transactionhistoryItemModelObj.salaryText!,
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              Text(
                transactionhistoryItemModelObj.amountText!,
                style: CustomTextStyles.bodyLargeGreen300,
              ),
              SizedBox(height: 6.v),
              Text(
                transactionhistoryItemModelObj.dateText!,
                style: CustomTextStyles.bodySmallBluegray400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
