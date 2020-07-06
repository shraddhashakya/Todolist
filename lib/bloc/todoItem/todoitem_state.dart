part of 'todoitem_bloc.dart';

abstract class TodoitemState extends Equatable {
  const TodoitemState();
}

class TodoItemInitial extends TodoitemState {
  final List<String> todoList;
  TodoItemInitial([this.todoList = const []]);

  @override
  List<Object> get props => [todoList];
}

class TodoNotLoaded extends TodoitemState {
  @override
  //String toString => 'TodoNotLoaded';
  List<Object> get props => [];
}
