part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

// Create Event Here - Has to Extend TodoEvent

class TodoPressedInitailEvent extends TodoEvent {
  const TodoPressedInitailEvent();
  
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TodoPressedSuccesEvent extends TodoEvent {
  const TodoPressedSuccesEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}
