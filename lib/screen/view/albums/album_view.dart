import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_demo_provider.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("UserId=${context.watch<JsonDemoProvider>().albumModelList[index].userId}"),
          title: Text("${context.read<JsonDemoProvider>().albumModelList[index].title}"),
          subtitle:Text("ID=${context.watch<JsonDemoProvider>().albumModelList[index].id}"),
        );
      },
        itemCount: context.watch<JsonDemoProvider>().albumModelList.length,
      ),
    );
  }
}
