import 'dart:convert';

import 'package:http/http.dart' as http;
/*
class APIService{
  static var client = http.Client();

  static Future<dynamic> getUsers() async {
    Map<String, String> requestHeaders = {
      'Content-Type':'application/json',
    };

    var url = Uri.https("test.soulsoftsks.in", "/super/sales_api");
    var response = await client.get(url,headers: requestHeaders);

    if(response.statusCode==200){
      print(response.body);
    }else{
      return null;
    }


  }
}

 */



class APIService{
  static var client = http.Client();

  static Future<bool> login(String uname, String password) async {
    Map<String, String> requestHeaders = {
      'Content-Type':'application/json',
    };

    var url = Uri.https("test.soulsoftsks.in", "/super/employee_login");
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(
          {
            "uname": uname,
            // "email": uname,
            "password": password,
          },
      ),
    );

    if(response.statusCode==200){

      String data = response.body;
      print(data);
      return true;
    }else{
      return false;
    }


  }
}