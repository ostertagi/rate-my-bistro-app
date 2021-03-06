import 'package:meta/meta.dart';
import 'package:rate_my_bistro/state/LoadingStatus.dart';

/// Auth State of the application
///
/// Contains all properties to
/// to fulfill the auth workflow
///
/// @author Ansgar Sachs <ansgar.sachs@cgm.com>
///
@immutable
class AuthState {
  final LoadingStatus loadingStatus;
  final String password;
  final String passwordError;
  final String retypePassword;
  final String retypePasswordError;
  final String email;
  final String emailError;
  final String token;
  final String code;
  final String codeError;

  AuthState(
      {@required this.loadingStatus,
      @required this.password,
      @required this.passwordError,
      @required this.retypePassword,
      @required this.retypePasswordError,
      @required this.email,
      @required this.emailError,
      @required this.token,
      @required this.code,
      @required this.codeError});

  factory AuthState.initial() {
    return new AuthState(
        loadingStatus: LoadingStatus.SUCCESS,
        password: "",
        passwordError: "",
        retypePassword: "",
        retypePasswordError: "",
        email: "",
        emailError: "",
        token: "",
        code: "",
        codeError: "");
  }

  AuthState copyWith({
    LoadingStatus loadingStatus,
    String password,
    String passwordError,
    String retypePassword,
    String retypePasswordError,
    String email,
    String emailError,
    String token,
    String code,
    String codeError,
  }) {
    return new AuthState(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        password: password ?? this.password,
        passwordError: passwordError ?? this.passwordError,
        retypePassword: retypePassword ?? this.retypePassword,
        retypePasswordError: retypePasswordError ?? this.retypePasswordError,
        email: email ?? this.email,
        emailError: emailError ?? this.emailError,
        token: token ?? this.token,
        code: code ?? this.code,
        codeError: codeError ?? this.codeError);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          loadingStatus == other.loadingStatus &&
          password == other.password &&
          passwordError == other.passwordError &&
          retypePassword == other.retypePassword &&
          retypePasswordError == other.retypePasswordError &&
          email == other.email &&
          emailError == other.emailError &&
          token == other.token &&
          code == other.code &&
          codeError == other.codeError;

  @override
  int get hashCode =>
      loadingStatus.hashCode ^
      password.hashCode ^
      passwordError.hashCode ^
      retypePassword.hashCode ^
      retypePasswordError.hashCode ^
      email.hashCode ^
      emailError.hashCode ^
      token.hashCode ^
      code.hashCode ^
      codeError.hashCode;
}
