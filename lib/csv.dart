import 'dart:io';
import 'package:csv/csv.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ControllerWithReactive extends GetxController {
  static ControllerWithReactive get to => Get.find();
  RxString path = ''.obs;
  RxBool fileSave = false.obs;
  RxBool ig = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<File> csvSave() async {
    DateTime current = DateTime.now();
    final String fileName = '${DateFormat('yyyyMMdd_hhmmss').format(current)}';
    print('$fileName');
    List<dynamic> firstData = [];
    List<List<dynamic>> addFirstData = [];
    File file = File(path.value);
    addFirstData.add(firstData);
    String csv = const ListToCsvConverter().convert(addFirstData) + '\n';
    return file.writeAsString(csv, mode: FileMode.append);
  }

  Future<File> csvSaveInit() async {
    DateTime current = DateTime.now();
    print("csv save");
    final String fileName = DateFormat('yyyyMMdd-HHmmss').format(current);
    final String streamDateTime =
        DateFormat('yyyy/MM/dd HH:mm:ss').format(current);
    await Directory('datafiles').create();
    path.value = "./datafiles/$fileName.csv";
    String startTime = streamDateTime;
    File file = File(path.value);
    String firstRow = "FileFormat:1";
    String secondRow = "HWType:SPdbUSBm";
    String thirdRow = "Start Time : $startTime";
    String fourthRowFirst = "Intergration Time:";
    String fourthRowSecond = "Interval:";
    print("exists in");
    String intergrationColumn = firstRow +
        '\n' +
        secondRow +
        '\n' +
        thirdRow +
        '\n' +
        fourthRowFirst +
        ',' +
        fourthRowSecond +
        // ',' +
        // fourthRowThird +
        '\n' +
        "Time" +
        ',' +
        '\n';
    return file.writeAsString(intergrationColumn);
  }
}
