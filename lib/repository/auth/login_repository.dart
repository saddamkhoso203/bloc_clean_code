// ignore_for_file: unused_import

import 'package:bloc_clean_coding/data/network/network_services_api.dart';
import 'package:bloc_clean_coding/models/user/user_model.dart';
import 'package:http/http.dart';

import '../../config/app_url.dart';

class LoginRepository {
  final _api = NetworkApiServices();

  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrl.loginApi, data);

    return UserModel.fromJson(response);
  }
}
