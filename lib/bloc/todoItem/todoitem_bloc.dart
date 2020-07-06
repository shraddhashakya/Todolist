import 'dart:async';

import 'package:aashishtodolist/bloc/todo/todo_bloc.dart';
import 'package:aashishtodolist/source/todoItem.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todoitem_event.dart';
part 'todoitem_state.dart';

class TodoitemBloc extends Bloc<TodoitemEvent, TodoitemState> {
  @override
  TodoitemState get initialState => TodoItemInitial();

  @override
  Stream<TodoitemState> mapEventToState(
    TodoitemEvent event,
  ) async* {
    var currState = state;
    print(currState);
    if (event is TodoitemInitailEvent) {
      if (currState is TodoItemInitial) {
        yield TodoItemInitial();
      }
    } else if (event is TodoAddItemEvent) {
      if (currState is TodoItemInitial) {
        final List<String> updatedTodo = List.from(currState.todoList)
          ..add(event.todo);

        yield TodoItemInitial(updatedTodo);
      }
    } else if (event is TodoDeleteItemEvent) {
      if (currState is TodoItemInitial) {
        final List<String> updatedTodo = List.from(currState.todoList)
          ..remove(event.item);
        yield TodoItemInitial(updatedTodo);
      }
    }
  }
}
