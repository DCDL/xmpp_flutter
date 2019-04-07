import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AccountEvent extends Equatable {
  AccountEvent([List props = const []]) : super(props);
}

class AppStarted extends AccountEvent {
  @override
  String toString() => 'AppStarted';
}

class Login extends AccountEvent {
  final String username;
  final String password;
  final String domain;
  final int port;

  Login(
      {@required this.username,
      @required this.password,
      @required this.domain,
      @required this.port})
      : super([username, password, domain, port]);

  @override
  String toString() => 'Login { username: $username }';
}

class Logout extends AccountEvent {
  @override
  String toString() => 'Logout';
}

class ForgetMe extends AccountEvent {
  @override
  String toString() {
    return "DontRememberMe";
  }
}
