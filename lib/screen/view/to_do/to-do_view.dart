import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_demo_provider.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("UserId=${context.watch<JsonDemoProvider>().toDoModelList[index].userId}\nID=${context.watch<JsonDemoProvider>().toDoModelList[index].id}",style: TextStyle(fontWeight: FontWeight.bold),),
          title: Text("${context.read<JsonDemoProvider>().toDoModelList[index].title}"),
          subtitle:context.watch<JsonDemoProvider>().toDoModelList[index].completed!?const Text("Completed Successfully!   "):const Text("Not completed yet!      "),
        );
      },
        itemCount: context.watch<JsonDemoProvider>().toDoModelList.length,
      ),
    );
  }
}

