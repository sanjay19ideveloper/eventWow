// ignore_for_file: must_be_immutable

part of 'contact_us_one_bloc.dart';

/// Represents the state of ContactUsOne in the application.
class ContactUsOneState extends Equatable {
  ContactUsOneState({
    this.messageController,
    this.mobileNovalueController,
    this.yourQueryvalueController,
    this.preferredMethodOfCommunication = "",
    this.contactUsOneModelObj,
  });

  TextEditingController? messageController;

  TextEditingController? mobileNovalueController;

  TextEditingController? yourQueryvalueController;

  ContactUsOneModel? contactUsOneModelObj;

  String preferredMethodOfCommunication;

  @override
  List<Object?> get props => [
        messageController,
        mobileNovalueController,
        yourQueryvalueController,
        preferredMethodOfCommunication,
        contactUsOneModelObj,
      ];
  ContactUsOneState copyWith({
    TextEditingController? messageController,
    TextEditingController? mobileNovalueController,
    TextEditingController? yourQueryvalueController,
    String? preferredMethodOfCommunication,
    ContactUsOneModel? contactUsOneModelObj,
  }) {
    return ContactUsOneState(
      messageController: messageController ?? this.messageController,
      mobileNovalueController:
          mobileNovalueController ?? this.mobileNovalueController,
      yourQueryvalueController:
          yourQueryvalueController ?? this.yourQueryvalueController,
      preferredMethodOfCommunication:
          preferredMethodOfCommunication ?? this.preferredMethodOfCommunication,
      contactUsOneModelObj: contactUsOneModelObj ?? this.contactUsOneModelObj,
    );
  }
}
