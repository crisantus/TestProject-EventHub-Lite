
import 'dart:convert';

class LoginFormParam {
  String email;
  String password;

  LoginFormParam({
    required this.email,
    required this.password,

  });
  
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'email': email});
    result.addAll({'password': password});
   
  
    return result;
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'LoginFormParam(email: $email, password: $password)';
}