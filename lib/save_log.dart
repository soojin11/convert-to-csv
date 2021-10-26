// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

// class SaveLog extends StatelessWidget {
//   String? content;
//   SaveLog({Key? key, this.content}) : super(key: key);
//   Future<String> _getDirPath() async {
//     final _dir = await getApplicationDocumentsDirectory();
//     return _dir.path;
//   }

//   Future<void> _readData() async {
//     final _dirPath = await _getDirPath();
//     final _myFile = File('$_dirPath/data.txt');
//     final _data = await _myFile.readAsString(encoding: utf8);
//   }

//   final _textController = TextEditingController();
//   Future<void> _writeData() async {
//     final _dirPath = await _getDirPath();
//     final _myFile = File('$_dirPath/data.txt');
//     await _myFile.writeAsString(_textController.text);
//     _textController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Saving Log'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: _textController,
//               decoration: InputDecoration(labelText: 'Enter Something'),
//             ),
//             ElevatedButton(
//               child: Text('Save to file'),
//               onPressed: _writeData,
//             ),
//             SizedBox(
//               height: 150,
//             ),
//             ElevatedButton(
//               child: Text('Read my name from the file'),
//               onPressed: _readData,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
