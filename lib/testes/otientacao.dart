import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {



  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Orientação"),
      ),
      body: OrientationBuilder(
        builder: (
             context, orientation,) {
          // return Container(
          //   child: orientation == Orientation.portrait
          //   ? const Text("Portraint")
          //   : const Text("Landscape")
          // );
          
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.orange,),
              Container(color: Colors.blue,),
              Container(color: Colors.purple,),
              Container(color: Colors.yellow,),
            ],
          );
        },
      ),
    );
  }
}
