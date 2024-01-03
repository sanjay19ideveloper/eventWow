// ignore_for_file: must_be_immutable

part of 'all_cities_photographer_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllCitiesPhotographerContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllCitiesPhotographerContainerEvent extends Equatable {}

/// Event that is dispatched when the AllCitiesPhotographerContainer widget is first created.
class AllCitiesPhotographerContainerInitialEvent
    extends AllCitiesPhotographerContainerEvent {
  @override
  List<Object?> get props => [];
}
