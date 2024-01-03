// ignore_for_file: must_be_immutable

part of 'app_settings_bloc.dart';

/// Represents the state of AppSettings in the application.
class AppSettingsState extends Equatable {
  AppSettingsState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.appSettingsModelObj,
  });

  AppSettingsModel? appSettingsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        appSettingsModelObj,
      ];
  AppSettingsState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    AppSettingsModel? appSettingsModelObj,
  }) {
    return AppSettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      appSettingsModelObj: appSettingsModelObj ?? this.appSettingsModelObj,
    );
  }
}
