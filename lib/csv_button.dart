import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_for_wr/csv.dart';

class CSVButton extends StatelessWidget {
  Future<void> updateCSV() async {
    Get.find<ControllerWithReactive>().csvSave();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV'),
      ),
      body: Column(
        children: [
          Container(
            child: OutlinedButton(
                onPressed: () async {
                  await Get.find<ControllerWithReactive>().csvSaveInit();
                  Get.find<ControllerWithReactive>().fileSave.value = true;
                },
                child: Text("Save Start")),
          ),
          Container(
              child: OutlinedButton(
                  onPressed: () {
                    Get.find<ControllerWithReactive>().fileSave.value = false;
                  },
                  child: Text("Save Stop")))
        ],
      ),
    );
  }
}
