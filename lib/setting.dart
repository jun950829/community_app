import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class global {

  static String main_url = 'http://15.165.211.53';


  static Future<dynamic> getUserList() async {


    http.Response _res = await http.post(Uri.parse("$main_url/api/users/inquire"),
      body: {
        'gb' : 'inquire',
      }
    );

    debugPrint(_res.body.toString());
    return _res.body;
  }

}