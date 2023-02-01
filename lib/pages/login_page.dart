import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formstate = GlobalKey<FormState>();

  final textformfieldcontroller = TextEditingController();

  final textformpasswordfieldcontroller = TextEditingController();

  String textusernamevalidator = 'david riyan kurniawan';

  String textpaswordvalidator = '12345678';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Form(
              key: _formstate,
              child: Column(
                children: [
                  TextFormField(
                    controller: textformfieldcontroller,
                    validator: (value) {
                      if (value == '') {
                        return 'Username tidak boleh kosong';
                      } else if (value != textusernamevalidator) {
                        return 'Username anda salah';
                      }
                    },
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.black),
                        label: Text('Username'),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: textformpasswordfieldcontroller,
                    validator: (value) {
                      if (value == '') {
                        return 'Password tidak boleh kosong';
                      } else if (value != textpaswordvalidator) {
                        return 'Password anda salah';
                      }
                    },
                    decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.black),
                        label: Text('Password'),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        if (_formstate.currentState!.validate()) {
                          print('benar');
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        } else {
                          print('salah');
                        }
                      },
                      child: Text('Submit'))
                ],
              ))
        ],
      ),
    );
  }
}
