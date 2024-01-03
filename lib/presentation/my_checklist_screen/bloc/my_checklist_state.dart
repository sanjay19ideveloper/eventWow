// ignore_for_file: must_be_immutable

part of 'my_checklist_bloc.dart';

/// Represents the state of MyChecklist in the application.
class MyChecklistState extends Equatable {
  MyChecklistState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.radioGroup4 = "",
    this.radioGroup5 = "",
    this.radioGroup6 = "",
    this.radioGroup7 = "",
    this.radioGroup8 = "",
    this.radioGroup9 = "",
    this.radioGroup10 = "",
    this.radioGroup11 = "",
    this.oneMonthToGo = "",
    this.oneWeekToGo = "",
    this.myChecklistModelObj,
  });

  MyChecklistModel? myChecklistModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  String radioGroup4;

  String radioGroup5;

  String radioGroup6;

  String radioGroup7;

  String radioGroup8;

  String radioGroup9;

  String radioGroup10;

  String radioGroup11;

  String oneMonthToGo;

  String oneWeekToGo;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        radioGroup4,
        radioGroup5,
        radioGroup6,
        radioGroup7,
        radioGroup8,
        radioGroup9,
        radioGroup10,
        radioGroup11,
        oneMonthToGo,
        oneWeekToGo,
        myChecklistModelObj,
      ];
  MyChecklistState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    String? radioGroup4,
    String? radioGroup5,
    String? radioGroup6,
    String? radioGroup7,
    String? radioGroup8,
    String? radioGroup9,
    String? radioGroup10,
    String? radioGroup11,
    String? oneMonthToGo,
    String? oneWeekToGo,
    MyChecklistModel? myChecklistModelObj,
  }) {
    return MyChecklistState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      radioGroup4: radioGroup4 ?? this.radioGroup4,
      radioGroup5: radioGroup5 ?? this.radioGroup5,
      radioGroup6: radioGroup6 ?? this.radioGroup6,
      radioGroup7: radioGroup7 ?? this.radioGroup7,
      radioGroup8: radioGroup8 ?? this.radioGroup8,
      radioGroup9: radioGroup9 ?? this.radioGroup9,
      radioGroup10: radioGroup10 ?? this.radioGroup10,
      radioGroup11: radioGroup11 ?? this.radioGroup11,
      oneMonthToGo: oneMonthToGo ?? this.oneMonthToGo,
      oneWeekToGo: oneWeekToGo ?? this.oneWeekToGo,
      myChecklistModelObj: myChecklistModelObj ?? this.myChecklistModelObj,
    );
  }
}
