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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: '플러터'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('저녁식사')),
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '리스트',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/aurora.png',
                  scale: 5,
                ),
                SizedBox(width: 20,),
                Text(
                    '돈까스',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  'assets/aurora.png',
                  scale: 5,
                ),
                SizedBox(width: 20,),
                Text(
                  '제육',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  'assets/aurora.png',
                  scale: 5,
                ),
                SizedBox(width: 20,),
                Text(
                  '라면',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            TextField(),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  '주문하기'
                )
            ),
          ],
        ),

      )
    );
  }
}
