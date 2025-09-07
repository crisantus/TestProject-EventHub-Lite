import 'dart:convert';

class SignupFormParam {
  String email;
  String password;
  String name;
  SignupFormParam({
    required this.email,
    required this.password,
    required this.name,
  });
  
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'name': name});
  
    return result;
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'SignupFormParam(email: $email, name: $name password: $password)';
}


