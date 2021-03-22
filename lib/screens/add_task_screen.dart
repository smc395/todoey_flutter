import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callBack;
  AddTaskScreen({this.callBack});

  @override
  Widget build(BuildContext context) {
    String taskText;

    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (userInput) {
                  taskText = userInput;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                style: ButtonStyle(
                  alignment: Alignment.center,
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(
                      top: 15.0,
                      bottom: 15.0,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Task t = Task(
                    name: taskText,
                    isDone: false,
                  );
                  callBack(t);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
