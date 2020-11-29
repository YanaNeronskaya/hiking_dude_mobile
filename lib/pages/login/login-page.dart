import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hiking_dude_mobile/common/colors.dart';
import 'package:hiking_dude_mobile/common/text-styles.dart';
import 'package:hiking_dude_mobile/elements/back-button.dart';
import 'package:hiking_dude_mobile/widgets/login-form/login-form.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: BackArrowButton(),
              title: Text('Login', style: titleTS(color: AppColors.pink)),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    'Please, enter your email and password:',
                    style: titleTS(color: AppColors.middleGray),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  LoginForm(),
                ],
              ),
            )),
      ),
    );
  }
}
