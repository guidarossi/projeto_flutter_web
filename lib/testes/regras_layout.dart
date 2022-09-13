import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  State<RegrasLayout> createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Layout Builder",
        ),
      ),

      body: Container(
        color: Colors.orange,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
            builder: (context, constraint){

              var largura = constraint.maxWidth;
              print(largura);
              // return Container(
              //   child: const Text("Gui"),
              // );

              if(largura < 600){//celular
                return const Text("Celulares");
              }else if( largura < 960){//tablet
                return const Text("Tablets");
              }else{
                return const Text("Pc/Notebook");
              }
        }),
      ),
    );
  }
}
