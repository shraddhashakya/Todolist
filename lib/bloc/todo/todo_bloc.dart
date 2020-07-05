import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  @override
  TodoState get initialState => TodoInitial();

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    // Which event has arrived?

    //using ternary operator since there is only two cases
    //yield event is TodoPressedInitailEvent ? TodoInitial() : TodoSuccess();

    //using if else

    if (event is TodoPressedInitailEvent) {
      print("state changed initial");
      yield TodoInitial();
    } else if (event is TodoPressedSuccesEvent) {
      print("state changed to sucess");
      yield TodoSuccess();
    } else if (event is TodoGoToTodoItemEvent) {
      yield GoToTodoItemPageState();
    }

    // If Event is TodoPressedEvent
    // - yeild TodoInitialState
  }
}
