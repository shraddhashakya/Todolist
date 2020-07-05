part of 'todoitem_bloc.dart';

abstract class TodoitemEvent extends Equatable {
  const TodoitemEvent();
}

class TodoitemInitailEvent extends TodoitemEvent {
  const TodoitemInitailEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TodoAddItemEvent extends TodoitemEvent {
  const TodoAddItemEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TodoDeleteItemEvent extends TodoitemEvent {
  const TodoDeleteItemEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TodoUpdateItemEvent extends TodoitemEvent {
  const TodoUpdateItemEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}
