part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final String phoneNumber;
  final String passwordCode;
  final bool loading;
  final String errorText;

  const AuthState({
    required this.phoneNumber,
    required this.passwordCode,
    this.loading = false,
    this.errorText = '',
  });

  AuthState copyWith({
    String? phoneNumber,
    String? passwordCode,
    bool? loading,
    String? errorText,
  }) {
    return AuthState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      passwordCode: passwordCode ?? this.passwordCode,
      errorText: errorText ?? this.errorText,
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object?> get props => [
        phoneNumber,
        passwordCode,
        loading,
        errorText,
      ];
}
