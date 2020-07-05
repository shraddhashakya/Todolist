import 'package:aashishtodolist/bloc/todoItem/todoitem_bloc.dart';
import 'package:aashishtodolist/bloc/todoItem/todoitem_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'todo_bloc.dart';

class TodoScreen extends StatelessWidget {
  // Repository

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoInitial) {
          return Scaffold(
            appBar: AppBar(
              title: Text('State Mangement'),
            ),
            body: Container(
                child: Column(
              children: <Widget>[
                new Text(
                  'Aashish',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image.asset('assets/aashish.jpg'),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.deepOrange,
                    onPressed: () {
                      BlocProvider.of<TodoBloc>(context)
                          .add(TodoPressedSuccesEvent());
                    },
                    child: Text('Go to Suceess State'),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    child: Text('Show Suceess Alert'),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    textColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TodoItemScreen()),
                      );
                    },
                    child: Text('SKIP'),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    textColor: Colors.white,
                  ),
                )
                // new Text('Show Success Alert')
              ],
            )),
          );
        } else if (state is TodoSuccess) {
          return Scaffold(
            body: Container(
                child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image.asset('assets/success.png')),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {
                        BlocProvider.of<TodoBloc>(context)
                            .add(TodoPressedInitailEvent());
                      },
                      child: Text('Go to Initial State'),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            )),
          );
        }
      },
    );

    // return Container();
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop('dialog');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Success!!"),
    content: Text("This is my success state message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
