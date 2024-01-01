// import 'package:flutter/material.dart';
// import 'package:singlepagedesign/openheart_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OpenUpScreen(),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrayOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Speed Dial'),
      ),
      body: const Text("Hello"),
      floatingActionButton: buildSpeedDial(),
    );
  }

  Widget buildSpeedDial() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isTrayOpen)
          buildActionButton(icon: Icons.add, onPressed: () => _handleAction('Add'), text: "Aziz"),
        if (isTrayOpen)
          buildActionButton(icon: Icons.edit, onPressed: () => _handleAction('Edit'), text: "Aziz"),
        if (isTrayOpen)
          buildActionButton(icon: Icons.edit, onPressed: () => _handleAction('Edit'), text: "Aziz"),
        if (isTrayOpen)
          buildActionButton(icon: Icons.edit, onPressed: () => _handleAction('Edit'), text: "Aziz"),
        if (isTrayOpen)
          buildActionButton(icon: Icons.delete, onPressed: () => _handleAction('Delete'), text: "Aziz"),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              isTrayOpen = !isTrayOpen;
            });
          },
          child: Icon(isTrayOpen ? Icons.close : Icons.menu),
        ),
      ],
    );
  }

  Widget buildActionButton({required IconData icon, required String text, required VoidCallback onPressed}) {
    return Container(
      alignment: Alignment.topRight,
      height: 100,
      width: 150,
      child: Column(
        children: [
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(text),
                FloatingActionButton(
                  onPressed: onPressed,
                  child: Icon(icon),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _handleAction(String action) {
    // Implement your action logic here
    print('Performing action: $action');
  }
}



