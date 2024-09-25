part of 'login_bloc.dart';

class LoginStates extends Equatable {
  const LoginStates(
      {this.email = '',
      this.password = '',
      this.error = '',
      this.postApiStatus = PostApiStatus.initial});

  final String email;
  final String password;
  final String error;
  final PostApiStatus postApiStatus;

  LoginStates copyWith({
    String? email,
    String? password,
    String? error,
    PostApiStatus? postApiStatus,
  }) {
    return LoginStates(
        email: email ?? this.email,
        password: password ?? this.password,
        error: error ?? this.error,
        postApiStatus: postApiStatus ?? this.postApiStatus);
  }

  @override
  List<Object> get props => [email, password, postApiStatus, error ];
}
