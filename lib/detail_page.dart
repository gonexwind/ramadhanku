import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String doa;
  final String latin;
  final String terjemahan;

  DetailPage(
      {@required this.title,
      @required this.doa,
      @required this.latin,
      @required this.terjemahan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              doa,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(latin, style: TextStyle(fontSize: 16, color: Colors.teal)),
            SizedBox(height: 20),
            Text(terjemahan, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
