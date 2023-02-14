import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_flutter_widget/view/home_view/main_view_working/view_htttp/data_class.dart';

class Services {
  Future<List<CData>> getAllData() async {
    final response = await http.get(
        Uri.parse('https://6283762138279cef71d77f41.mockapi.io/api/v1/data2'));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => CData.fromJson(e)).toList();
    } else  {
      throw Exception("Failed data List");
    }
  }
}
