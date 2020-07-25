import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../lib/bloc/todoItem/todoitem_bloc.dart';

class MockTodoRepository extends Mock implements TodoitemBloc {}

void main() {
  MockTodoRepository mockTodoRepository;
  setUp(() {
    mockTodoRepository = MockTodoRepository();
  });

  group('Todolist', () {
    test('emits when one item is added to todo list', () async {
      final bloc = TodoitemBloc()..add(TodoAddItemEvent('Drink water'));
      await emitsExactly(bloc, [TodoItemInitial()]);
    });

    test('emits when one item is deleted from todo list', () async {
      final bloc = TodoitemBloc()..add(TodoDeleteItemEvent('Drink water'));
      await emitsExactly(bloc, [TodoItemInitial()]);
    });

    // blocTest(

    //   'emits when an item is added',
    //   // build: () => TodoitemBloc(),
    //   build: () {
    //     // when(mockWeatherRepository.fetchWeather(any))
    //     //     .thenAnswer((_) async => weather);
    //     return TodoitemBloc();
    //   },
    //   // build: () {
    //   //   return TodoitemBloc();
    //   // },
    //   act: (bloc) => bloc.add(TodoAddItemEvent('Drink water')),
    //   expect: [
    //     TodoItemInitial(),
    //     TodoItemInitial(),
    //   ],
    // );
  });
}
