import 'dart:async';

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
    // TODO: implement mapEventToState
    if (event is TodoitemInitailEvent) {
      yield TodoItemInitial();
    } else if (event is TodoAddItemEvent) {
      yield TodoAddItem();
    } else if (event is TodoDeleteItemEvent) {
      yield TodoDeleteItem();
    } else if (event is TodoUpdateItemEvent) {
      yield TodoUpdateItem();
    }
  }
}
