import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('My Notes',style: TextStyle(color: Colors.white))),
        backgroundColor : Colors.lightBlue,
      ),
        body: Center(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0, bottom: 20.0),
                        child: Image.network(
                            'https://i.pinimg.com/originals/5e/ed/04/5eed044f1bbba3d8b19dfbefa598b520.jpg',
                            width: 100,
                            height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Enter your Username'),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.contains('0')) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Enter your password'),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 7) {
                              return 'Please enter some valid password';
                            }
                            return null;
                          },
                          obscureText: true,
                        ),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                child: ElevatedButton(
                    onPressed: () {
                        if (_formKey.currentState!.validate()) {

                        }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      onPrimary: Colors.white,
                    ),
                    child: const Text('submit')),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
