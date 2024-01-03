import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:sanjay_s_application2/presentation/all_cities_photographer_container_screen/models/all_cities_photographer_container_model.dart';part 'all_cities_photographer_container_event.dart';part 'all_cities_photographer_container_state.dart';/// A bloc that manages the state of a AllCitiesPhotographerContainer according to the event that is dispatched to it.
class AllCitiesPhotographerContainerBloc extends Bloc<AllCitiesPhotographerContainerEvent, AllCitiesPhotographerContainerState> {AllCitiesPhotographerContainerBloc(AllCitiesPhotographerContainerState initialState) : super(initialState) { on<AllCitiesPhotographerContainerInitialEvent>(_onInitialize); }

_onInitialize(AllCitiesPhotographerContainerInitialEvent event, Emitter<AllCitiesPhotographerContainerState> emit, ) async  {  } 
 }
