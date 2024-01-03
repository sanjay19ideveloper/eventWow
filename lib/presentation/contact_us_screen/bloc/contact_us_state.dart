// ignore_for_file: must_be_immutable

part of 'contact_us_bloc.dart';

/// Represents the state of ContactUs in the application.
class ContactUsState extends Equatable {
  ContactUsState({
    this.messageController,
    this.mobileNoController,
    this.yourQueryController,
    this.radioGroup = "",
    this.contactUsModelObj,
  });

  TextEditingController? messageController;

  TextEditingController? mobileNoController;

  TextEditingController? yourQueryController;

  ContactUsModel? contactUsModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        messageController,
        mobileNoController,
        yourQueryController,
        radioGroup,
        contactUsModelObj,
      ];
  ContactUsState copyWith({
    TextEditingController? messageController,
    TextEditingController? mobileNoController,
    TextEditingController? yourQueryController,
    String? radioGroup,
    ContactUsModel? contactUsModelObj,
  }) {
    return ContactUsState(
      messageController: messageController ?? this.messageController,
      mobileNoController: mobileNoController ?? this.mobileNoController,
      yourQueryController: yourQueryController ?? this.yourQueryController,
      radioGroup: radioGroup ?? this.radioGroup,
      contactUsModelObj: contactUsModelObj ?? this.contactUsModelObj,
    );
  }
}
