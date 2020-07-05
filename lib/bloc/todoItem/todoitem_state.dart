part of 'todoitem_bloc.dart';

abstract class TodoitemState extends Equatable {
  const TodoitemState();
}

class TodoItemInitial extends TodoitemState {
  @override
  List<Object> get props => [];
}

class TodoAddItem extends TodoitemState {
  @override
  List<Object> get props => [];
}

class TodoDeleteItem extends TodoitemState {
  @override
  List<Object> get props => [];
}

class TodoUpdateItem extends TodoitemState {
  @override
  List<Object> get props => [];
}
