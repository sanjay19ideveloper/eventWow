import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/my_checklist_screen/models/my_checklist_model.dart';part 'my_checklist_event.dart';part 'my_checklist_state.dart';/// A bloc that manages the state of a MyChecklist according to the event that is dispatched to it.
class MyChecklistBloc extends Bloc<MyChecklistEvent, MyChecklistState> {MyChecklistBloc(MyChecklistState initialState) : super(initialState) { on<MyChecklistInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); on<ChangeRadioButton2Event>(_changeRadioButton2); on<ChangeRadioButton3Event>(_changeRadioButton3); on<ChangeRadioButton4Event>(_changeRadioButton4); on<ChangeRadioButton5Event>(_changeRadioButton5); on<ChangeRadioButton6Event>(_changeRadioButton6); on<ChangeRadioButton7Event>(_changeRadioButton7); on<ChangeRadioButton8Event>(_changeRadioButton8); on<ChangeRadioButton9Event>(_changeRadioButton9); on<ChangeRadioButton10Event>(_changeRadioButton10); on<ChangeRadioButton11Event>(_changeRadioButton11); on<ChangeRadioButton12Event>(_changeRadioButton12); on<ChangeRadioButton13Event>(_changeRadioButton13); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_changeRadioButton2(ChangeRadioButton2Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup2: event.value)); } 
_changeRadioButton3(ChangeRadioButton3Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup3: event.value)); } 
_changeRadioButton4(ChangeRadioButton4Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup4: event.value)); } 
_changeRadioButton5(ChangeRadioButton5Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup5: event.value)); } 
_changeRadioButton6(ChangeRadioButton6Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup6: event.value)); } 
_changeRadioButton7(ChangeRadioButton7Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup7: event.value)); } 
_changeRadioButton8(ChangeRadioButton8Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup8: event.value)); } 
_changeRadioButton9(ChangeRadioButton9Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup9: event.value)); } 
_changeRadioButton10(ChangeRadioButton10Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup10: event.value)); } 
_changeRadioButton11(ChangeRadioButton11Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(radioGroup11: event.value)); } 
_changeRadioButton12(ChangeRadioButton12Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(oneMonthToGo: event.value)); } 
_changeRadioButton13(ChangeRadioButton13Event event, Emitter<MyChecklistState> emit, ) { emit(state.copyWith(oneWeekToGo: event.value)); } 
List<String> fillRadioList() { return ["msg_decide_wedding_budget", "msg_estimate_guest_count"]; } 
List<String> fillRadioList1() { return ["lbl_renew_passports", "msg_reserve_flights"]; } 
List<String> fillRadioList2() { return ["msg_start_visa_arrangements", "msg_browse_invitation2"]; } 
List<String> fillRadioList3() { return ["msg_start_distributing", "msg_research_honeyoon", "msg_do_a_site_visit", "msg_have_a_food_tasting", "msg_start_dance_practices", "msg_book_your_priest", "msg_finalise_look_with"]; } 
List<String> fillRadioList4() { return ["msg_give_outfits_for", "msg_confirm_updated", "msg_take_guest_rsvps"]; } 
List<String> fillRadioList5() { return ["msg_pack_for_your_honeymoon", "msg_give_yourself_a"]; } 
_onInitialize(MyChecklistInitialEvent event, Emitter<MyChecklistState> emit, ) async  { emit(state.copyWith(radioGroup: "", radioGroup1: "", radioGroup2: "", radioGroup3: "", radioGroup4: "", radioGroup5: "", radioGroup6: "", radioGroup7: "", radioGroup8: "", radioGroup9: "", radioGroup10: "", radioGroup11: "", oneMonthToGo: "", oneWeekToGo: "")); emit(state.copyWith(myChecklistModelObj: state.myChecklistModelObj?.copyWith(radioList: fillRadioList(), radioList1: fillRadioList1(), radioList2: fillRadioList2(), radioList3: fillRadioList3(), radioList4: fillRadioList4(), radioList5: fillRadioList5()))); } 
 }
