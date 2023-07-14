import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_toturials/provider/authprovider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: provider.isshow,
            decoration: InputDecoration(
                suffixIcon: InkWell(
              onTap: () {
                provider.visible();
              },
              child: Consumer<AuthProvider>(
                  builder: (context, value, child) => Icon(value.isshow
                      ? Icons.visibility_off_outlined
                      : Icons.visibility)),
            )),
          ),
          ElevatedButton(
              onPressed: () {
                provider.login(emailController.text, passwordController.text);
              },
              child: provider.loading
                  ? CircularProgressIndicator()
                  : Text('lOGIN'))
        ],
      ),
    );
  }
}
