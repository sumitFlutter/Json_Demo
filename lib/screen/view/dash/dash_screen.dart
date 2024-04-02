import 'package:flutter/material.dart';
import 'package:json_demo/screen/provider/json_demo_provider.dart';
import 'package:json_demo/screen/view/albums/album_view.dart';
import 'package:json_demo/screen/view/comments/comments_view.dart';
import 'package:json_demo/screen/view/photos/photos_details_view.dart';
import 'package:json_demo/screen/view/post/post_view.dart';
import 'package:json_demo/screen/view/to_do/to-do_view.dart';
import 'package:json_demo/screen/view/users/users_view.dart';
import 'package:provider/provider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<JsonDemoProvider>().getAlbumsP();
    context.read<JsonDemoProvider>().getCommentsP();
    context.read<JsonDemoProvider>().getPostP();
    context.read<JsonDemoProvider>().getPhotoP();
    context.read<JsonDemoProvider>().getUserP();
    context.read<JsonDemoProvider>().getToDoP();
  }
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
    DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Json Demo"),
          bottom: TabBar(
            labelColor: Colors.blue,
            indicatorColor: Colors.blue,
            tabs: [
             Tab(icon: Icon(Icons.album),),
            Tab(icon: Icon(Icons.comment),),
            Tab(icon: Icon(Icons.post_add),),
            Tab(icon:Icon(Icons.photo)),
           Tab(icon: Icon(Icons.today),),
            Tab(icon:Icon(Icons.person)),
          ],),
        ),
        body: TabBarView(children: [
          Album(),
          Comments(),
          Post(),
          Photos(),
          Todo(),
          Users()
        ],),
      ),
    ),);
  }
}
