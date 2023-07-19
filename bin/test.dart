import 'dart:convert';

import 'package:http/http.dart' as http;
main() async {
 // var response = await http.get(Uri.parse("http://127.0.0.1:8000/hermanast/a"));
    var response = await http.post(Uri.parse("http://127.0.0.1:8000/hermanast/a"),
   body:{
  "username":"Chris",
  "email":"cris_7715@hotmail.com",
  "password":"12345"
    } );



 print(jsonDecode(response.body) ["UserName"] );
 print(jsonDecode(response.body) ["email"] );

}