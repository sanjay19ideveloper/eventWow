import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/verification_one_dialog/models/verification_one_model.dart';part 'verification_one_event.dart';part 'verification_one_state.dart';/// A bloc that manages the state of a VerificationOne according to the event that is dispatched to it.
class VerificationOneBloc extends Bloc<VerificationOneEvent, VerificationOneState> {VerificationOneBloc(VerificationOneState initialState) : super(initialState) { on<VerificationOneInitialEvent>(_onInitialize); }

_onInitialize(VerificationOneInitialEvent event, Emitter<VerificationOneState> emit, ) async  {  } 
 }
