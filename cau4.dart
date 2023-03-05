import 'dart:io';
void main() {
  File file_1 = File('hello.txt');
  String contents = file_1.readAsStringSync();
  File file_2 = File('hello_copy.txt');
  file_2.writeAsStringSync('${contents}\n', mode: FileMode.append);
  print('Tập tin đã được sao chép');
}