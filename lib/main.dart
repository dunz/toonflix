import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hi DJ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8), fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              const Text(
                'test',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
