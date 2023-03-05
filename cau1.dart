import 'dart:io';
void main() {
  // open file
  File file =  File('hello.txt');
  // write to file
  String myName = 'Hoàng Thị Thùy Linh';
  file.writeAsStringSync('Hello ${myName}\n', mode: FileMode.append);
  print('Tên của bạn đã được thêm vào');
}