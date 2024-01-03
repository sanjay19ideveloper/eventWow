// ignore_for_file: must_be_immutable

part of 'all_photos_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllPhotosTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllPhotosTwoEvent extends Equatable {}

/// Event that is dispatched when the AllPhotosTwo widget is first created.
class AllPhotosTwoInitialEvent extends AllPhotosTwoEvent {
  @override
  List<Object?> get props => [];
}
