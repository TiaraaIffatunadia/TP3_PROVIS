import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rent_car/models/user_model.dart';

class Repository{
  final _basUrl = 'https://663cf4c317145c4d8c384c20.mockapi.io/rental';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_basUrl));

      if(response.statusCode == 200){
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<User> user = it.map((e) => User.fromJson(e)).toList();
        return user;
      }
    } catch(e) {
      print(e.toString()
      );
    }
  }

  Future postData(String name, String no_hp, String nama_car) async {
    try {
      final response = await http.post(Uri.parse(_basUrl),
      body: {
        "name": name,
        "no_hp": no_hp,
        "nama_car": nama_car
      }
      );
      if(response.statusCode == 201){
        return true;
      }else{
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future putData(int id, String name, String no_hp, String nama_car) async {
    try {
      final response = await http.put(Uri.parse(_basUrl + '/' + id.toString()),
      body: {
        "name": name,
        "no_hp": no_hp,
        "nama_car": nama_car
      }
      );
      if(response.statusCode == 200){
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future deleteData(String id) async {
    try {
      final response = await http.delete(Uri.parse(_basUrl + '/' + id));
      if(response.statusCode == 200){
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}