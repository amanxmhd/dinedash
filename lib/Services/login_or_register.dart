import 'package:dinedash/Pages/login_page.dart';
import 'package:dinedash/Pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  // initially,show login page
  bool showLoginPage = true;

  //toggle between two pages
  void togglePages(){
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(onTap: togglePages);
    } else{
      return RegisterPage(onTap: togglePages);
    }
    return const Placeholder();
  }
}
