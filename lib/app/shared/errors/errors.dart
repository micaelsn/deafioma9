abstract class Failure implements Exception {
  String get message;
}

class ServerError extends Failure {
  @override
  String get message => "Ops... Erro com servidor";
}