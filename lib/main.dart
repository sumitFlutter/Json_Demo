import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_demo/screen/provider/json_demo_provider.dart';
import 'package:json_demo/screen/view/dash/dash_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: JsonDemoProvider())
      ],
      child:
          MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(),
            home: DashScreen(),
          )
      ),
  );
}