// ignore_for_file: must_be_immutable

part of 'all_photos_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllPhotos widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllPhotosEvent extends Equatable {}

/// Event that is dispatched when the AllPhotos widget is first created.
class AllPhotosInitialEvent extends AllPhotosEvent {
  @override
  List<Object?> get props => [];
}
