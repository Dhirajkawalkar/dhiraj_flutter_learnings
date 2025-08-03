import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:popup_dialouge/popup_screen.dart';
import 'package:popup_dialouge/test_main.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'journey_list.dart';
import 'package:dash/dash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context,child){
        return MaterialApp(
          title: "Pop Up",
          home: HomePage(),
        );
      },
    );
  }
}




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: PopupScreen(), // Use your existing custom widget here .. . . . . . .
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}






