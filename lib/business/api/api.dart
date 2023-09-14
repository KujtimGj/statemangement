import 'dart:convert';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:statemanagement/business/provider/serverProvider.dart';

class Api{
   String api = 'http://localhost:8000';
   String? token;

   setToken(String newToken) async {
      token = newToken;
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      await localStorage.setString('authToken', newToken);
   }

   getData(String api, context)async{
      var provider = Provider.of<ServerProvider>(context,listen:false);

      try{
         HttpClient client = HttpClient();

         client.badCertificateCallback = ((X509Certificate cert, String host, int port)=> true);
         HttpClientRequest request = await client.getUrl(Uri.parse('${Api().api}/$api'));
         request.headers.add("content-type", 'application/json; charset=utf-8');

         final response = await request.close();
         var ress = json.decode(await response.transform(utf8.decoder).join());
         return ress;
      }catch(error){
         provider.changeServerStatus(false);
         rethrow;
      }
   }

}