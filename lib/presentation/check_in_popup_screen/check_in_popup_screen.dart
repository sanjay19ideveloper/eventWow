import 'bloc/check_in_popup_bloc.dart';
import 'models/check_in_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_elevated_button.dart';
import 'package:table_calendar/table_calendar.dart';

class CheckInPopupScreen extends StatelessWidget {
  const CheckInPopupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckInPopupBloc>(
      create: (context) => CheckInPopupBloc(CheckInPopupState(
        checkInPopupModelObj: CheckInPopupModel(),
      ))
        ..add(CheckInPopupInitialEvent()),
      child: CheckInPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 392.h,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder29,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 12.v),
                _buildCalendarSection(context),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  height: 44.v,
                  width: 198.h,
                  text: "lbl_apply".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                  buttonTextStyle: CustomTextStyles.titleMediumNunitoWhiteA700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return BlocBuilder<CheckInPopupBloc, CheckInPopupState>(
      builder: (context, state) {
        return SizedBox(
          height: 314.v,
          width: 353.h,
          child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: state.rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
              todayTextStyle: TextStyle(
                color: appTheme.black90001,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
              todayDecoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.h),
                ),
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: appTheme.gray50006,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            headerVisible: false,
            rowHeight: 40.v,
            focusedDay: state.focusedDay ?? DateTime.now(),
            rangeStartDay: state.rangeStart,
            rangeEndDay: state.rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(state.selectedDay, selectedDay)) {
                state.focusedDay = focusedDay;
                state.selectedDay = selectedDay;
                state.rangeSelectionMode = RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              state.focusedDay = focusedDay;
              state.rangeEnd = end;
              state.rangeStart = start;
              state.rangeSelectionMode = RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              state.focusedDay = focusedDay;
            },
          ),
        );
      },
    );
  }
}
