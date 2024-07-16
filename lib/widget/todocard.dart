import 'package:flutter/material.dart';
import 'package:gymwebapp/widget/actionbutton.dart';
import 'package:gymwebapp/widget/normaltext.dart';
import 'package:gymwebapp/widget/titletext.dart';

import '../pages/view/web/services/services.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> tasks;
  final VoidCallback onOrderPressed;

  const TodoCard({
    required this.title,
    required this.subtitle,
    required this.tasks,
    required this.onOrderPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ServiceCard(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Title and Subtitle
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                TitleText(
                  text:title,
      
                ),
                const SizedBox(height: 8),
                TitleText(
                  text:subtitle,
       
                ),
              ],
            ),
          ),
          // To-Do List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: tasks.map((task) => ToDoItem(task: task)).toList(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Order Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:ActionButton(onpress: (){}, text: "Order")
          ),
        ],
      ),
    );
  }
}

class ToDoItem extends StatelessWidget {
  final String task;

  const ToDoItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check,
            size: 14,
            color: Colors.green[200],
          ),
          const SizedBox(width: 8),
          NormalText(
           text: task,
            size: 14,
            
          ),
        ],
      ),
    );
  }
}
