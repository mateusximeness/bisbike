import 'package:bisbike/models/UserLogin.dart';

class LoginService{
    bool validaLogin(String userNameEmail, String password){
      final userLogin = UserLogin(userNameEmail, password);
    //TODO
      return true;
    }
}