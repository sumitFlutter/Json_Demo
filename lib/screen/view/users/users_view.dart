import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/json_demo_provider.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  JsonDemoProvider? r;
  @override
  Widget build(BuildContext context) {
    r=context.watch<JsonDemoProvider>();
    return SafeArea(
      child: Scaffold(
        body: r!.change==false?Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                child: ListBody(children: [
                  ListTile(title: Text("User: Id-${r!.userModelList[index].id!}\nName:${r!.userModelList[index].name!}"),
                    subtitle: Text("Username: ${r!.userModelList[index].username!}"),),
                  ListTile(title: Text("Email-${r!.userModelList[index].email!}\nWebsite:${r!.userModelList[index].web!}"),
                    subtitle: Text(r!.userModelList[index].phone!),),
                  ListTile(title: const Text("Address:-"),
                    subtitle: Text("${r!.userModelList[index].suite!},${r!.userModelList[index].street!},${r!.userModelList[index].city!}-${r!.userModelList[index].zipcode},lng:${r!.userModelList[index].lng!},lat:${r!.userModelList[index].lat!}"),),
                  ListTile(title: Text("Company Details:  C-Name:${r!.userModelList[index].companyName!}"),
                    subtitle:  Text("C-BS:${r!.userModelList[index].bs!},\nC-catchPhrase:${r!.userModelList[index].catchPhrase!}"),),
                ],),
              );
            },
            itemCount: r!.userModelList.length,
          ),
        ):Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                child: ListBody(children: [
                  ListTile(title: Text("User: Id-${r!.user1ModelList[index].id!}\nName:${r!.userModelList[index].name!}"),
                    subtitle: Text("Username: ${r!.user1ModelList[index].username!}"),),
                  ListTile(title: Text("Email-${r!.user1ModelList[index].email!}"),
                  ),
                  ListTile(title: const Text("Address:-"),
                    subtitle: Text("${r!.user1ModelList[index].addressModel!.suite!},${r!.user1ModelList[index].addressModel!.street!},${r!.user1ModelList[index].addressModel!.city!}-${r!.user1ModelList[index].addressModel!.zipcode},lng:${r!.user1ModelList[index].addressModel!.geoModel!.lag},lat:${r!.user1ModelList[index].addressModel!.geoModel!.lat}"),),
                ],),
              );
            },
            itemCount: r!.user1ModelList.length,
          ),
        ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<JsonDemoProvider>().toggle();
          },child: context.watch<JsonDemoProvider>().change?Icon(Icons.add):Icon(Icons.remove))
      ),
    );
  }
}