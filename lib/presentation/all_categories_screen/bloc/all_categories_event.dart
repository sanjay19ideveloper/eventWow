// ignore_for_file: must_be_immutable

part of 'all_categories_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllCategories widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllCategoriesEvent extends Equatable {}

/// Event that is dispatched when the AllCategories widget is first created.
class AllCategoriesInitialEvent extends AllCategoriesEvent {
  @override
  List<Object?> get props => [];
}
