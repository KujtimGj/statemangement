import 'dart:convert';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/business/provider/serverProvider.dart';
import 'package:http/http.dart' as http;

class Api {
  String api = 'http://localhost:8000';
  String? token;

  var header = {"Content-Type": "application/json"};

  setToken(String newToken) async {
    token = newToken;
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    await localStorage.setString('authToken', newToken);
  }

  getData(String api, context) async {
    var provider = Provider.of<ServerProvider>(context, listen: false);
    try {
      var res = await http.get(Uri.parse(
          '${Api().api}/completedservices/byStaff/64ec660d36090e9602c172ca'));
      return jsonDecode(res.body);
    } catch (error) {
      provider.changeServerStatus(false);
      rethrow;
    }
  }

  postData(String api,Map<String,dynamic> data, context) async {
    var provider = Provider.of<ServerProvider>(context, listen: false);
    try {
      var res = await http.post(
          Uri.parse(
              '${Api().api}/completedservices/byStaff/64ec660d36090e9602c172ca'),
          body: jsonEncode(data),headers: header);

      print('${Api().api}completedservices/byStaff/64ec660d36090e9602c172ca');
      return jsonDecode(res.body);
    } catch (error) {
      provider.changeServerStatus(false);
      rethrow;
    }
  }
}
