import 'dart:io';

void main() {
  File file =  File('hello.txt');
  print("Nhập số tên của bạn bè:");
  int? num = int.parse(stdin.readLineSync()!);
  for(int i = 0; i< num; i++){
      print("Nhập tên của bạn bè:");
      String? name = stdin.readLineSync()!;
      file.writeAsStringSync('Hello ${name}\n', mode: FileMode.append);
   }
  print('Tên đã được thêm vào');
}