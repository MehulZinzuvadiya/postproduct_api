import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiHelper {
  Future<String> productApiCall() async {
    String? apiLink = "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(apiLink);
    var response = await http.post(uri,body: {
      "p_name":"mehul i_phone",
      "p_price":"150000",
      "p_rate":"4.0",
      "p_offer":"5000",
      "p_desc":"8gb ram",
      "p_category":"apple",
    });
    if (response.statusCode == 200) {
     return "Success";
    } else {
      return "Failed";
    }
  }
}
