import 'package:flutter/material.dart';
import 'package:qoutes/screens/secondscreen.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => second())));
            },
            child: Text("Go to next page"),
          ),
        ),
      ),
    );
  }
}
