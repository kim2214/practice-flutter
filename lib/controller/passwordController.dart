import 'package:flutter/material.dart';
import 'package:flutter_string_encryption/flutter_string_encryption.dart';

class PasswordController {
  // var key = "null";
  // String encryptedS, decryptedS;
  // var password = "null";
  // PlatformStringCryptor cryptor;

  // // method to Encrypt String Password
  // Future<String> Encrypt(passwordVal) async {
  //   cryptor = PlatformStringCryptor();
  //   final salt = await cryptor.generateSalt();
  //   password = passwordVal;
  //   key = await cryptor.generateKeyFromPassword(password, salt);
  //   encryptedS = await cryptor.encrypt(password, key);
  //   print(encryptedS);
  //   return Future.delayed(Duration(seconds: 4), () => encryptedS);
  // }

  // // method to decrypt String Password
  // void Decrypt(passwordVal) async {
  //   try {
  //     //here pass encrypted string and the key to decrypt it
  //     decryptedS = await cryptor.decrypt(passwordVal, key);
  //     var order = await Encrypt(passwordVal);
  //     print('dec pass is $order');
  //   } on MacMismatchException {}
  // }

  // String getPass(passwordVal){
  //   try {
  //     //here pass encrypted string and the key to decrypt it
  //     var order = Encrypt(passwordVal);
  //     print('dec pass is $order');
  //   } on MacMismatchException {}
  // }
  
  // Future<String> getpass(passwordVal) async {
  //   var order = await getUserOrder();
  //   return 'Your order is: $order';
  // }

  // Future<String> getUserPassword(passwordVal) async {
  //   try {
  //     //here pass encrypted string and the key to decrypt it
  //     decryptedS = await cryptor.decrypt(passwordVal, key);
  //     print(decryptedS);
  //   } on MacMismatchException {}
  //   return Future.delayed(Duration(seconds: 4), () => passwordVal);
  // }

  // Future<String> createOrderMessage(passwordVal) async {
  //   var order = await getUserOrder();
  //   return 'Your order is: $order';
  // }

  // Future<String> getUserOrder() {
  //   return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
  // }
}

// Future<String> createOrderMessage() async {
//   var order = await getUserOrder();
//   return 'Your order is: $order';
// }
