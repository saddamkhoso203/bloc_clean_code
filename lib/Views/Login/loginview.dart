import 'package:bloc_clean_coding/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widgets.dart';

class LoginVIew extends StatefulWidget {
  const LoginVIew({super.key});

  @override
  State<LoginVIew> createState() => _LoginVIewState();
}

class _LoginVIewState extends State<LoginVIew> {
  late LoginBloc _loginBlocs;
  final emailFocusNode = FocusNode();
  final passwordFucusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginBlocs = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login'),
        ),
        body: BlocProvider(
          create: (context) => _loginBlocs,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EmailInputWidgets(emailFocusNode: emailFocusNode),
                    const SizedBox(
                      height: 20,
                    ),

                    PasswordInputWidgets(passswordFocusNode: passwordFucusNode),
                    // PasswordInputWidget(passswordFocusNode: passwordFucusNode),
                    const SizedBox(
                      height: 50,
                    ),
                    LoginButton(formKey: _formKey),
                  ],
                )),
          ),
        ));
  }
}
