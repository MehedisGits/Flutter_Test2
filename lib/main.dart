import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Styling',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling and Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 24, // Larger font size
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
            SizedBox(height: 8), // Add some space between title and subtitle
            // Subtitle
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 16, // Smaller font size
                fontStyle: FontStyle.italic, // Italic text
              ),
            ),
            SizedBox(height: 20), // Space between subtitle and button

            // Interactive Text Button
            TextButton(
              onPressed: () {
                // Show a snackbar when pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              child: Text('Press Me'),
            ),
            Text(
              'Wellcome to Flutter',
              style: TextStyle(
                fontSize: 24, // Text size is set to 24 logical pixels
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
