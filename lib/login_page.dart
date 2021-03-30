import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFFFF),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      color: Colors.blue,
                      colorBrightness: Brightness.dark,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(16.0),
                      ),
                      onPressed: () {
                        if (email == "cassiano@gmail.com.br" && password == '123') {
                          Navigator.of(context).pushReplacementNamed('/home');
                        }
                      },
                      child: Text('Entrar',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class CustomTextEmail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        String email = text;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder()
      ),
    );
  }
}
*/
