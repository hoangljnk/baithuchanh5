import 'dart:io';

void main() {
  // open file
  File file = File("sinhvien.csv");
  // write to file
  file.writeAsStringSync('Tên,SDT,Địa chỉ\n');
  for (int i = 0; i < 3; i++) {
    // user input name
    stdout.write("Nhập tên sinh viên ${i + 1}: ");
    String? ten = stdin.readLineSync();
    stdout.write("Nhập số điện thoại sinh viên ${i + 1}: ");
    // user input phone
    String? sdt = stdin.readLineSync();
    stdout.write("Nhập địa chỉ sinh viên ${i + 1}: ");
    String? dc = stdin.readLineSync();
    file.writeAsStringSync('$ten,$sdt,$dc\n', mode: FileMode.append);
  }
  print("Tệp CSV đã đọc thành công");
  String contents = file.readAsStringSync();
  // split file using new line
  List<String> lines = contents.split('\n');
  // print file
  print('---------------------');
  for (var line in lines) {
    print(line);
  }
}