import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(
          const AuthState(
            phoneNumber: '',
            passwordCode: '',
          ),
        );

  loginUser() {
    emit(state.copyWith(loading: true));
    try {
      // repo
    } catch (e) {
      emit(
        state.copyWith(errorText: "Error Login $e", loading: false),
      );
    }
  }
}
