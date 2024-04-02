import 'package:flutter/material.dart';
import 'package:json_demo/screen/provider/json_demo_provider.dart';
import 'package:provider/provider.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("UserId=${context.watch<JsonDemoProvider>().postModelList[index].userId}"),
          title: Text("${context.read<JsonDemoProvider>().postModelList[index].title}"),
          subtitle:Text("${context.watch<JsonDemoProvider>().postModelList[index].body}"),
          trailing: Text("ID=${context.watch<JsonDemoProvider>().postModelList[index].id}"),

        );
      },
        itemCount: context.watch<JsonDemoProvider>().postModelList.length,
      ),
    );
  }
}
