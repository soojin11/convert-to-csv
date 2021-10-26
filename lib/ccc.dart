// import 'dart:html';

// import 'package:csv/csv.dart';
// import 'package:flutter/material.dart';

// class ExportCsv {
//   final List data;
//   ExportCsv({required this.data});

//   List<List<dynamic>> rows = [];
//   downloadData() {
//     for (int i = 0; i < data.length; i++) {
//       List<dynamic> row = [];
//       row.add(data[i].userName);
//       row.add(data[i].userLastName);
//       row.add(data[i].userEmail);
//       rows.add(row);
//     }

//     String csv = const ListToCsvConverter().convert(rows);
//     new AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
//       ..setAttribute("download", "data.csv")
//       ..click();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('csv'),
//       ),
//       body: OutlinedButton(onPressed: () {}, child: Text('save')),
//     );
//   }
// }

