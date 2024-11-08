class AppExceptionResponse {
  final String message;

  AppExceptionResponse({this.message = ""});

  factory AppExceptionResponse.fromJson(Map<String, dynamic> json) {
    return AppExceptionResponse(
      message: json['message'] ?? "",
    );
  }
}
