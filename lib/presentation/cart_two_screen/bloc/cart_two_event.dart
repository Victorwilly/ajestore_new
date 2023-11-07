// ignore_for_file: must_be_immutable

part of 'cart_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CartTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CartTwoEvent extends Equatable {}

/// Event that is dispatched when the CartTwo widget is first created.
class CartTwoInitialEvent extends CartTwoEvent {
  @override
  List<Object?> get props => [];
}
