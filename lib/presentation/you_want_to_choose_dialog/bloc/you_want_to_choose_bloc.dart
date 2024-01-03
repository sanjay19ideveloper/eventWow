import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/you_want_to_choose_dialog/models/you_want_to_choose_model.dart';part 'you_want_to_choose_event.dart';part 'you_want_to_choose_state.dart';/// A bloc that manages the state of a YouWantToChoose according to the event that is dispatched to it.
class YouWantToChooseBloc extends Bloc<YouWantToChooseEvent, YouWantToChooseState> {YouWantToChooseBloc(YouWantToChooseState initialState) : super(initialState) { on<YouWantToChooseInitialEvent>(_onInitialize); }

_onInitialize(YouWantToChooseInitialEvent event, Emitter<YouWantToChooseState> emit, ) async  {  } 
 }
