/*
import 'package:dio/dio.dart';
import 'package:message_box_flutter/ClientServer/MatrixApiResult.dart';

class MatrixApi {
  Dio dio = Dio();

  String homeServer = 'matrix.org'; //socialxmatch.com

  bool isEmail(String input) {
    // Regular expression to validate an Email
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(input);
  }

  bool isUsername(String input) {
    // Regular expression to validate a Username
    final usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
    return usernameRegex.hasMatch(input);
  }

  Future<MatrixApiResult> signUp(String username, String password) async {
    try {
      Response response = await dio.post('https://$homeServer/register', data: {
        'user': username,
        'password': password,
      });

      // Extracting the authentication token from the server response
      String authToken = response.data['auth_token'];

      // Further actions with the obtained token can be implemented here
      return MatrixApiResult('Sign up successful', false);
    } catch (e) {
      // Handle registration error
      return MatrixApiResult('Error during registration: $e', true);
    }
  }

  Future<MatrixApiResult> logIn(String username, String password) async {
    Response response;
    try {
      if (isEmail(username)) {
        response = await dio
            .post('https://$homeServer/_matrix/client/v3/login', data: {
          'identifier': {
            'medium': 'email',
            'address': username,
          },
          'password': password,
          'type': 'm.login.password'
        });
      } else {
        response = await dio
            .post('https://$homeServer/_matrix/client/v3/login', data: {
          'identifier': {
            'type': 'm.id.user',
            'user': username,
          },
          'password': password,
          'type': 'm.login.password'
        });
      }

      String authToken = response.data['access_token'];
      return MatrixApiResult('Log In successful', false);
    } catch (e) {
      // Handle login error
      return MatrixApiResult('Log In Unsuccessful', true);
    }
  }
}
*/
