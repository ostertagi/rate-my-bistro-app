import 'package:meta/meta.dart';
import 'package:rate_my_bistro/state/LoadingStatus.dart';
import 'package:rate_my_bistro/state/ScreenState.dart';

/// Sign In State of the application
///
/// Contains all properties to
/// to fulfill the sign in workflow
///
/// @author Ansgar Sachs <ansgar.sachs@cgm.com>
///
@immutable
class SignInState {
  final ScreenState type;
  final LoadingStatus loadingStatus;
  final String password;
  final String passwordError;
  final String email;
  final String emailError;
  final String code;
  final String codeError;

  SignInState({
    this.type,
    this.loadingStatus,
    this.password,
    this.passwordError,
    this.email,
    this.emailError,
    this.code,
    this.codeError
  });

  SignInState copyWith({
    ScreenState type,
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
    return new SignInState(
        type: type ?? this.type,
        loadingStatus: loadingStatus ?? this.loadingStatus,
        password: password ?? this.password,
        passwordError: passwordError ?? this.passwordError,
        email: email ?? this.email,
        emailError: emailError ?? this.emailError,
        code: code ?? this.code,
        codeError: codeError ?? this.codeError);
  }

  factory SignInState.initial() {
    return new SignInState(
        type: ScreenState.WELCOME,
        loadingStatus: LoadingStatus.SUCCESS,
        password: "",
        passwordError: "",
        email: "",
        emailError: "",
        code: "",
        codeError: "");
  }
}
