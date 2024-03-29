import 'dart:io';
import 'dart:convert';
 
void main(List<String> arguments) {
 
  String data = '';
  for(int i = 0; i < 100; i++) {
    data = data + 'Hello Vorllld!!!\r\n';
  }
 
  //Original Data
  var original = utf8.encode(data);
  //Compress data
  var compressed = gzip.encode(original);
  //Decompress
  var decompress = gzip.decode(compressed);
 
  print('Original ${original.length} bytes');
  print('Compressed ${compressed.length} bytes');
  print('Decompressed ${decompress.length} bytes');
 
  String decoded = utf8.decode(decompress);
  assert(data ==  decoded);
 
  print(decoded);
}

/*
old code
import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {


  String data = '';
  for(int i = 0; i < 100; i++) {
    data = data + 'Hello world\r\n';
  }

  //Original Data
  List original = UTF8.encode(data);

  //Compress data
  List compressed = GZIP.encode(original);

  //Decompress
  List decompress = GZIP.decode(compressed);

  print('Original ${original.length} bytes');
  print('Compressed ${compressed.length} bytes');
  print('Decompressed ${decompress.length} bytes');

  String decoded = UTF8.decode(decompress);
  assert(data ==  decoded);

  print(decoded);

}
*/
