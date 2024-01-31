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
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-WeJdY6MhHtmzVwD7gnhirRyRngo3IU-XAw&usqp=CAU',
                            width: 100,
                            height: 100),
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
                              return 'Please enter some valid email';
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data'),backgroundColor: Colors.purple,padding: EdgeInsets.all(20),shape: StadiumBorder(),behavior: SnackBarBehavior.floating,elevation: 50,margin: EdgeInsets.all(50),
                            ),
                          );
                        }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
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
