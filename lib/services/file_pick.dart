import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';

Future<String> singleFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: true,
    type: FileType.custom,
    allowedExtensions: ['jpg', 'png'],
  );

  if (result != null) {
    File file = File(result.files.single.path!);
    String baseName = basename(file.path);
    return baseName;
  } else {
    return "";
  }
}
