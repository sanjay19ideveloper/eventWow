import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/contact_us_one_screen/models/contact_us_one_model.dart';
part 'contact_us_one_event.dart';
part 'contact_us_one_state.dart';

/// A bloc that manages the state of a ContactUsOne according to the event that is dispatched to it.
class ContactUsOneBloc extends Bloc<ContactUsOneEvent, ContactUsOneState> {
  ContactUsOneBloc(ContactUsOneState initialState) : super(initialState) {
    on<ContactUsOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<ContactUsOneState> emit,
  ) {
    emit(state.copyWith(
      preferredMethodOfCommunication: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_whatsapp", "lbl_call"];
  }

  _onInitialize(
    ContactUsOneInitialEvent event,
    Emitter<ContactUsOneState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
      mobileNovalueController: TextEditingController(),
      yourQueryvalueController: TextEditingController(),
      preferredMethodOfCommunication: "",
    ));
    emit(state.copyWith(
        contactUsOneModelObj: state.contactUsOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
