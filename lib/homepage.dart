import 'package:flutter/material.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
              "data",
               style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepOrangeAccent
               )
            )
        )
    );
  }
}