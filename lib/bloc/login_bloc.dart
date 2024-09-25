import 'package:bloc_clean_coding/utils/emuns.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_PasswordChanged);
  }
  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _PasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.password));
  }
}
