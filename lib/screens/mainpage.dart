import 'dart:convert';

import 'package:community_app/setting.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  dynamic data = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () async {
          http.Response _res = await http.post(Uri.parse("http://15.165.211.53/api/users/inquire"),
              body: {
                'gb' : 'inquire',
              }
          );

          debugPrint(_res.statusCode.toString());
          debugPrint(json.decode(utf8.decode(_res.bodyBytes)).toString());
        },
        child: Text('callData'),
      ),
    );
  }

  Future<dynamic> calldata(String url) async {

    data = await global.getUserList();
    debugPrint('calldata $data');

  }
}



