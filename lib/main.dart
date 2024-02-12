import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio DevChangers 01',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 236, 250),
        leading: const Icon(Icons.arrow_back_outlined),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your top goals',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Truebill is here to help you live best financial life.',
              style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
            ),
            Expanded(
              child: Row(
                children: [
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 156, 39, 176),
                    icon: Icons.document_scanner,
                    boxLabel: "Track My Spending",
                  ),
                  SizedBox(width: 20),
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 206, 147, 216),
                    icon: Icons.play_arrow,
                    boxLabel: "Cancel Subscription",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 144, 202, 249),
                    icon: Icons.create_new_folder_outlined,
                    boxLabel: "Create A Budget",
                  ),
                  SizedBox(width: 20),
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 225, 190, 231),
                    icon: Icons.folder_outlined,
                    boxLabel: "Track My Net Woth",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 206, 147, 216),
                    icon: Icons.play_arrow_outlined,
                    boxLabel: "Improce My Credit Score",
                  ),
                  SizedBox(width: 20),
                  ReusableBox(
                    backgoudColor: Color.fromARGB(255, 144, 202, 249),
                    icon: Icons.account_tree_outlined,
                    boxLabel: "Grow My Savings",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50.0,
              width: double.infinity,
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 111, 67, 192),
                  ),
                ),
                onPressed: null,
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableBox extends StatelessWidget {
  const ReusableBox({
    super.key,
    this.backgoudColor,
    required this.icon,
    required this.boxLabel,
  });

  final Color? backgoudColor;
  final IconData icon;
  final String boxLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: backgoudColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(icon),
              ),
              const SizedBox(height: 10),
              Text(
                boxLabel,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
