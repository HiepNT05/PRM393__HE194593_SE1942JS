import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 1 - Core Widgets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headline Text
            const Text(
              'Welcome to Flutter UI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // Material Icon
            const Center(
              child: Icon(
                Icons.movie,
                size: 60,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 25),

            // Network Image
            Center(
              child: Image.network(
                'https://picsum.photos/500/300',
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 25),

            // Card containing a ListTile
            const Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Movie Item'),
                subtitle: Text(
                  'This is a sample ListTile inside a Card.',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}