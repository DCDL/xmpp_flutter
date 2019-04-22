import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const []]) : super(props);
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final String domain;
  final int port;

  LoginButtonPressed(
      {@required this.username,
      @required this.password,
      @required this.domain,
      @required this.port})
      : super([username, password, domain, port]);

  @override
  String toString() => 'LoginButtonPressed';
}

class LoginDataShownEvent extends LoginEvent {
  @override
  String toString() => 'LoginDataShownEvent';
}

class LoginDataLoadedEvent extends LoginEvent {
  String username;
  String password;
  String domain;
  int port;
  bool wasExtended;
  bool rememberMe;

  @override
  String toString() => 'LoginDataLoadedEvent';

  LoginDataLoadedEvent(
      {this.username, this.password, this.domain, this.port, this.wasExtended, this.rememberMe});
}

class RememberMePressed extends LoginEvent {
  final bool rememberMeValue;

  RememberMePressed({@required this.rememberMeValue})
      : super([rememberMeValue]);

  @override
  String toString() => 'RememberMePressed';
}

class ExtendPressed extends LoginEvent {

  ExtendPressed() : super();

  @override
  String toString() => 'ExtendPressed';
}

class LoginFailureEvent extends LoginEvent {
  final String message;

  LoginFailureEvent({this.message});

  @override
  String toString() => 'LoginFailure';
}
