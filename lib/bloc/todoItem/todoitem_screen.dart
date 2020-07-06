import 'package:aashishtodolist/bloc/todoItem/todoitem_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoItemScreen extends StatelessWidget {
  static const routeName = '/todoItem';
  @override
  Widget build(BuildContext context) {
    final addTFController = TextEditingController();

    return BlocBuilder<TodoitemBloc, TodoitemState>(
      builder: (context, state) {
        if (state is TodoItemInitial) {
          if (state.todoList == null) {
            return Scaffold(
                appBar: AppBar(
                  title: Text('Item List'),
                ),
                body: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'Add Todo Item',
                          suffix: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              BlocProvider.of<TodoitemBloc>(context)
                                  .add(TodoAddItemEvent(addTFController.text));
                            },
                          )),
                      controller: addTFController,
                    )),
                  )
                ]));
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text('Item List'),
              ),
              body: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                        child: TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'Add Todo Item',
                          suffix: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.black,
                            onPressed: () {
                              BlocProvider.of<TodoitemBloc>(context)
                                  .add(TodoAddItemEvent(addTFController.text));
                              addTFController.clear();
                            },
                          )),
                      controller: addTFController,
                    )),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Column(children: <Widget>[
                            ...state.todoList.map((e) => Card(
                                  elevation: 5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          )),
                                      // Text(e, textAlign: TextAlign.end),
                                      IconButton(
                                          alignment: Alignment.centerLeft,
                                          icon: Icon(Icons.delete),
                                          color: Colors.red,
                                          onPressed: () {
                                            print(e);
                                            BlocProvider.of<TodoitemBloc>(
                                                    context)
                                                .add(TodoDeleteItemEvent(e));
                                          }),
                                    ],
                                  ),
                                ))
                          ]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        }
      },
    );
  }
}
