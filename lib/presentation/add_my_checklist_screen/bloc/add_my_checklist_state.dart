// ignore_for_file: must_be_immutable

part of 'add_my_checklist_bloc.dart';

/// Represents the state of AddMyChecklist in the application.
class AddMyChecklistState extends Equatable {
  AddMyChecklistState({
    this.taskTwoController,
    this.taskTwoController1,
    this.taskTwoController2,
    this.taskTwoController3,
    this.taskTwoController4,
    this.addMyChecklistModelObj,
  });

  TextEditingController? taskTwoController;

  TextEditingController? taskTwoController1;

  TextEditingController? taskTwoController2;

  TextEditingController? taskTwoController3;

  TextEditingController? taskTwoController4;

  AddMyChecklistModel? addMyChecklistModelObj;

  @override
  List<Object?> get props => [
        taskTwoController,
        taskTwoController1,
        taskTwoController2,
        taskTwoController3,
        taskTwoController4,
        addMyChecklistModelObj,
      ];
  AddMyChecklistState copyWith({
    TextEditingController? taskTwoController,
    TextEditingController? taskTwoController1,
    TextEditingController? taskTwoController2,
    TextEditingController? taskTwoController3,
    TextEditingController? taskTwoController4,
    AddMyChecklistModel? addMyChecklistModelObj,
  }) {
    return AddMyChecklistState(
      taskTwoController: taskTwoController ?? this.taskTwoController,
      taskTwoController1: taskTwoController1 ?? this.taskTwoController1,
      taskTwoController2: taskTwoController2 ?? this.taskTwoController2,
      taskTwoController3: taskTwoController3 ?? this.taskTwoController3,
      taskTwoController4: taskTwoController4 ?? this.taskTwoController4,
      addMyChecklistModelObj:
          addMyChecklistModelObj ?? this.addMyChecklistModelObj,
    );
  }
}
