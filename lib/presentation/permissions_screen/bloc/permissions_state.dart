// ignore_for_file: must_be_immutable

part of 'permissions_bloc.dart';

/// Represents the state of Permissions in the application.
class PermissionsState extends Equatable {
  PermissionsState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.permissionsModelObj,
  });

  PermissionsModel? permissionsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        permissionsModelObj,
      ];
  PermissionsState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    PermissionsModel? permissionsModelObj,
  }) {
    return PermissionsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      permissionsModelObj: permissionsModelObj ?? this.permissionsModelObj,
    );
  }
}
