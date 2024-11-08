class AppExceptionResponse {
  final int code;
  final String description;
  final bool success;
  final String date;

  AppExceptionResponse(
      {this.code = 404,
      this.description = "No internet connexion",
      this.success = false,
      this.date = ""});

  factory AppExceptionResponse.fromJson(Map<String, dynamic> json) {
    return AppExceptionResponse(
      code: json['code'] ?? 404,
      description: json['description'] ?? "",
      success: json["success"] ?? false,
      date: json['date'] ?? "",
    );
  }
}
