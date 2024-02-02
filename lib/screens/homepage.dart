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
          title: const Center(
            child: Text(
              'My Notes',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          backgroundColor: Colors.grey.shade900,
        ),
        backgroundColor: Colors.black,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey.shade700,
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
                            padding:
                                const EdgeInsets.only(top: 60.0, bottom: 25.0),
                            child: Image.network(
                              'https://i.pinimg.com/474x/54/55/e8/5455e83d359b61928422b364d5516a99.jpg',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Enter your Username',
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelStyle: TextStyle(color: Colors.white),
                              ),
                                  style: TextStyle(color: Colors.white),

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
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your Password',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              style: TextStyle(color: Colors.white),
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
                    child: SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade300,
                            onPrimary: Colors.black,
                          ),
                          child: const Text('submit')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}
