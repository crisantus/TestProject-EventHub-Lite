
import 'dart:convert';

GenericModel genericModelFromJson(String str) => GenericModel.fromJson(json.decode(str));

String genericModelToJson(GenericModel data) => json.encode(data.toJson());

class GenericModel {
  final String success;
  final String statusCode;
  final String message;

  GenericModel({
    required this.success,
    required this.statusCode,
    required this.message,
  });

  factory GenericModel.fromJson(Map<String, dynamic> json) => GenericModel(
        success: (json["success"] ?? "").toString(),
        statusCode: (json["statusCode"] ?? "").toString(),
        message: (json["message"] ?? "").toString(),
      );

  factory GenericModel.empty() => GenericModel(
        success: "",
        statusCode: "",
        message: "",
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "statusCode": statusCode,
        "message": message,
      };
}
