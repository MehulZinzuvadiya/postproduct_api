import 'package:flutter/cupertino.dart';
import 'package:postproduct_api/Utils/api_helper.dart';

class HomeProvider extends ChangeNotifier{
  Future<String> postData()
  async {
    ApiHelper apiHelper=ApiHelper();
    String msg=await apiHelper.productApiCall();
    return msg;
  }
}