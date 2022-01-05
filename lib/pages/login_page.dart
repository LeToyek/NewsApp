// ignore_for_file: file_names
import 'package:dicoding/widgets/Input_data.dart';
import 'package:dicoding/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputData(
                name: 'Email',
                hintText: 'Alamat email',
                isPass: false,
              ),
              InputData(
                name: 'Password',
                hintText: 'Masukkan password',
                isPass: true,
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )),
              SizedBox(
                height: 16,
              ),
              ClickButton(text: 'Masuk', color: Colors.pink),
              SizedBox(
                height: 8,
              ),
              Text('Atau masuk dengan'),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  ClickButton(text: 'Google', color: Colors.white),
                  SizedBox(
                    width: 16,
                  ),
                  ClickButton(text: 'Facebook', color: Colors.blue)
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text('Belum punya akun? Ayo '),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Daftar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
