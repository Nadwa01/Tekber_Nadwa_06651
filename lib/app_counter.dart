import 'package:flutter/material.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nadwa Fatih"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                },
                child: Text("Tambah"),
              ),
            ),
            Container(
              color: Colors.orange,
              width: double.infinity,
              height: 200,
              child: Center(
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.purple
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count -= 1;
                  });
                },
                child: Text("Kurang"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
