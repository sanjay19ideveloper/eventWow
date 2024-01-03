// ignore_for_file: must_be_immutable

part of 'all_cities_photographer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllCitiesPhotographer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllCitiesPhotographerEvent extends Equatable {}

/// Event that is dispatched when the AllCitiesPhotographer widget is first created.
class AllCitiesPhotographerInitialEvent extends AllCitiesPhotographerEvent {
  @override
  List<Object?> get props => [];
}
