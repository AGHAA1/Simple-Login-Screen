import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.email});

  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey[200],
      body: SafeArea (
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.60,
              width: double.infinity,
              decoration : BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children : [
                    Text (
                      'Welcome , ${widget.email}',
                      style: TextStyle (
                        fontSize: 30,

                      )
                    ),
                    SizedBox(height: 50),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: TextButton (
                        onPressed: () {
                          Navigator.pop(context);
                        },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,

                          ),
                        child: Text (
                          'logout',
                          style: TextStyle(color: Colors.white),
                        )
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
