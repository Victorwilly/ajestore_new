// ignore_for_file: must_be_immutable

part of 'cart_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CartOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CartOneEvent extends Equatable {}

/// Event that is dispatched when the CartOne widget is first created.
class CartOneInitialEvent extends CartOneEvent {
  @override
  List<Object?> get props => [];
}
