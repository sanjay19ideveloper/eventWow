// ignore_for_file: must_be_immutable

part of 'add_adresss_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddAdresss widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddAdresssEvent extends Equatable {}

/// Event that is dispatched when the AddAdresss widget is first created.
class AddAdresssInitialEvent extends AddAdresssEvent {
  @override
  List<Object?> get props => [];
}
