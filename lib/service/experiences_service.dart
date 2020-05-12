import 'dart:async';
import 'dart:convert';
import 'package:dreamdays/data/models/experiences_model.dart';
import 'package:dreamdays/utils/urls/urls.dart';
import 'package:http/http.dart'  as http;
class ExperiencesService {
  Future<List<ExperiencesModel>> getExperiences() async {
    try {
      Map<String, String> header = {
        'Content-Type': 'application/json-patch+json',
        'Accept': 'text/plain',
      };
      var url = Urls.experienceUrl;
      print(url);
      var response = await http.get(url, headers: header);
      int statusCode = response.statusCode;
      print('status code = '+statusCode.toString());
      var resBody = jsonDecode(response.body);
      var data = resBody['data'] as List;
      var experiences = new List();
      var expData = new List();
      for (var i=0 ; i<data.length ; i++)
        {
          var temp = data[i] ;
          experiences.add(temp['experiences']) ;
          var tempExpArr =  temp['experiences'] ;
          var tempExp = tempExpArr[0] ;
          expData.add(tempExp['data']) ;
        }
     return expData.map<ExperiencesModel>((json) => ExperiencesModel.fromJson(json)).toList();
    } catch(e)
    {
      print('error = ' + e.toString());
      throw Exception('error') ;
    }

  }
}


