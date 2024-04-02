import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_demo_provider.dart';

class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              CircleAvatar(radius: 25,backgroundImage: NetworkImage(context.watch<JsonDemoProvider>().photoModelList[index].image!),),
              const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  context.read<JsonDemoProvider>().photoModelList[index].title!.length>=28?
              Text("${context.read<JsonDemoProvider>().photoModelList[index].title!.substring(0,28)}...",style: TextStyle(fontWeight: FontWeight.bold),)
                      :
                  Text("${context.read<JsonDemoProvider>().photoModelList[index].title}",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Id==${context.watch<JsonDemoProvider>().photoModelList[index].id}\nAlbum Id==${context.watch<JsonDemoProvider>().photoModelList[index].albumId}"),
                ],
              ),
              const Spacer(),
              CircleAvatar(radius: 25,backgroundImage: NetworkImage(context.watch<JsonDemoProvider>().photoModelList[index].url!),),

            ],

          ),
        );
      },
        itemCount: context.watch<JsonDemoProvider>().photoModelList.length,
      ),
    );
  }
}
