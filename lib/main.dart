import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:time_for_wr/clock.dart';
import 'package:time_for_wr/csv.dart';
import 'package:time_for_wr/csv_button.dart';
import 'package:time_for_wr/save_log.dart';

Future main() async {
  Get.put(ControllerWithReactive());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Time Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CSVButton(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late String _timeString;

//   @override
//   void initState() {
//     _timeString = _formatDateTime(DateTime.now());
//     Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Text(_timeString),
//       ),
//     );
//   }

//   void _getTime() {
//     final DateTime now = DateTime.now();
//     final String formattedDateTime = _formatDateTime(now);
//     setState(() {
//       _timeString = formattedDateTime;
//     });
//   }

//   String _formatDateTime(DateTime dateTime) {
//     return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
//   }
// }
