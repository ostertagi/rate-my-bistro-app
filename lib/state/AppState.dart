import 'package:flutter/material.dart';

import '../model/Menu.dart';
import 'AuthState.dart';
import 'SignInState.dart';

/// Root State of the application
///
/// Composes all substates together
///
/// @author Ansgar Sachs <ansgar.sachs@cgm.com>
///
@immutable
class AppState {
  final SignInState signInState;
  final AuthState authState;
  final List<Menu> menus;
  final Category category;

  AppState(
      {@required this.signInState,
      @required this.authState,
      this.menus,
      this.category});

  factory AppState.initial() {
    return AppState(
        authState: AuthState.initial(),
        signInState: SignInState.initial(),
        menus: List.unmodifiable([]),
        category: null);
  }

  AppState copyWith({
    AuthState authState,
    SignInState signInState,
    List<Menu> menus,
    Category category,
  }) {
    return AppState(
        authState: authState ?? this.authState,
        signInState: signInState ?? this.signInState,
        menus: menus ?? this.menus,
        category: category ?? this.category);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          authState == other.authState &&
          signInState == other.signInState &&
          menus == other.menus &&
          category == other.category;

  @override
  int get hashCode =>
      authState.hashCode ^
      signInState.hashCode ^
      category.hashCode ^
      menus.hashCode;
}
