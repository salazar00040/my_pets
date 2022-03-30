import 'package:flutter/material.dart';
import 'package:my_pets/auth_services/authentication_service.dart';
import 'package:my_pets/main.dart';
import 'package:my_pets/presentations/features/user_register/login_page.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationService auth = Provider.of<AuthenticationService>(context);

    if (auth.isLoading)
      return loading();
    else if (auth.usuario == null)
      return LoginPage();
    else
      return MyHomePage(title: 'title');
  }

  loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
