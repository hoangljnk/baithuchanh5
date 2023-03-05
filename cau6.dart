import 'dart:io';
void main() {
  // open file
  File file = File('hello_copy.txt');
  // delete file
  file.deleteSync();
  print('Tệp đã bị xóa');
}