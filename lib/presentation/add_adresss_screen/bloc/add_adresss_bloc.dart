import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/add_adresss_screen/models/add_adresss_model.dart';part 'add_adresss_event.dart';part 'add_adresss_state.dart';/// A bloc that manages the state of a AddAdresss according to the event that is dispatched to it.
class AddAdresssBloc extends Bloc<AddAdresssEvent, AddAdresssState> {AddAdresssBloc(AddAdresssState initialState) : super(initialState) { on<AddAdresssInitialEvent>(_onInitialize); }

_onInitialize(AddAdresssInitialEvent event, Emitter<AddAdresssState> emit, ) async  { emit(state.copyWith(addressController: TextEditingController(), localityTownValueController: TextEditingController(), cityController: TextEditingController(), pincodeController: TextEditingController(), stateValueController: TextEditingController())); } 
 }
