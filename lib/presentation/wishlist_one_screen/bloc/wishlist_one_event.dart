// ignore_for_file: must_be_immutable

part of 'wishlist_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishlistOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishlistOneEvent extends Equatable {}

/// Event that is dispatched when the WishlistOne widget is first created.
class WishlistOneInitialEvent extends WishlistOneEvent {
  @override
  List<Object?> get props => [];
}
