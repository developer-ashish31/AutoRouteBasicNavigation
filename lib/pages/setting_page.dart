import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Setting Page', style: TextStyle(color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
              Text(
                'Today we reveal the findings of our 2-year investigation, '
                    'presenting evidence that the INR 17.8 trillion (U.S. '
                    'Doller 218 billion)'
                    ' Indian conglomerate Adani Group has engaged in a brazen '
                    'stock manipulation and accounting fraud scheme over the '
                    'course of decades.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
