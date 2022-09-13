import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  State<ResponsividadeMediaQuery> createState() => _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaAppBar = AppBar().preferredSize.height;
    var aluraBarraStatus = MediaQuery.of(context).padding.top;

    return Scaffold(

      appBar: AppBar(
        title: Text("Responsividade"),
      ),

      body: Row(


        children: [
          Container(
            alignment: Alignment.center,
            width: largura * 0.25, //50%
            height: altura - alturaAppBar - aluraBarraStatus,
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            width: largura * 0.50, //50%
            height: altura - alturaAppBar - aluraBarraStatus,
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            width: largura * 0.25, //50%
            height: altura - alturaAppBar - aluraBarraStatus,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
