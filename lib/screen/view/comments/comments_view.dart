import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_demo_provider.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("PostId=${context.watch<JsonDemoProvider>().commentsModelList[index].postId}"),
          title: Text("name:- ${context.read<JsonDemoProvider>().commentsModelList[index].name}\nemail:- ${context.read<JsonDemoProvider>().commentsModelList[index].email}"),
          subtitle:Text("${context.watch<JsonDemoProvider>().commentsModelList[index].body}"),
          trailing: Text("ID=${context.watch<JsonDemoProvider>().commentsModelList[index].id}"),

        );
      },
        itemCount: context.watch<JsonDemoProvider>().commentsModelList.length,
      ),
    );
  }
}
