import 'dart:io';
void main() {
  var currentDirectory = Directory.current;
  print('Thư mục làm việc hiện tại là:');
  print(currentDirectory.path);
}