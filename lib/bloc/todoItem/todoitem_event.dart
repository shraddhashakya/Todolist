part of 'todoitem_bloc.dart';

abstract class TodoitemEvent extends Equatable {
  const TodoitemEvent();
}

class TodoitemInitailEvent extends TodoitemEvent {
  const TodoitemInitailEvent();
  @override
  List<Object> get props => [];
}

class TodoAddItemEvent extends TodoitemEvent {
  final String todo;

  TodoAddItemEvent(this.todo);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class TodoDeleteItemEvent extends TodoitemEvent {
  final String item;
  const TodoDeleteItemEvent(this.item);
  @override
  List<Object> get props => [item];
}
