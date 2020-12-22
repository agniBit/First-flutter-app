import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Auth {
  Dio dio = new Dio();

  login(name, password) async {
    try {
      print("send ${name} ${password}");
      return await dio.post("http://10.0.2.2:3000/authUser",
          data: {"name": "fzwgw", "password": "agrzegbe"},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      print(e);
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16);
    }
  }
}
