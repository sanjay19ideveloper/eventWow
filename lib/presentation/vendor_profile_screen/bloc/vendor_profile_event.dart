// ignore_for_file: must_be_immutable

part of 'vendor_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VendorProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VendorProfileEvent extends Equatable {}

/// Event that is dispatched when the VendorProfile widget is first created.
class VendorProfileInitialEvent extends VendorProfileEvent {
  @override
  List<Object?> get props => [];
}
