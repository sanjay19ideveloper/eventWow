import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sanjay_s_application2/presentation/contact_us_screen/models/contact_us_model.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';

/// A bloc that manages the state of a ContactUs according to the event that is dispatched to it.
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  ContactUsBloc(ContactUsState initialState) : super(initialState) {
    on<ContactUsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<ContactUsState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_whatsapp", "lbl_call"];
  }

  _onInitialize(
    ContactUsInitialEvent event,
    Emitter<ContactUsState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
      mobileNoController: TextEditingController(),
      yourQueryController: TextEditingController(),
      radioGroup: "",
    ));
    emit(state.copyWith(
        contactUsModelObj: state.contactUsModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
