// ignore_for_file: must_be_immutable

part of 'sub_category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SubCategory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubCategoryEvent extends Equatable {}

/// Event that is dispatched when the SubCategory widget is first created.
class SubCategoryInitialEvent extends SubCategoryEvent {
  @override
  List<Object?> get props => [];
}
