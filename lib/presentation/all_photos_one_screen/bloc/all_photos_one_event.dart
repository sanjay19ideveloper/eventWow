// ignore_for_file: must_be_immutable

part of 'all_photos_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllPhotosOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllPhotosOneEvent extends Equatable {}

/// Event that is dispatched when the AllPhotosOne widget is first created.
class AllPhotosOneInitialEvent extends AllPhotosOneEvent {
  @override
  List<Object?> get props => [];
}
