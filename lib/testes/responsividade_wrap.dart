import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  double altura = 100;
  double largura = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),
      body: Container(

        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 10,
          runSpacing: 40,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.yellow,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
