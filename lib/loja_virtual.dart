import 'package:flutter/material.dart';
import 'package:projeto_flutter_web/widget/item_produto.dart';
import 'package:projeto_flutter_web/widget/mobile_app_bar.dart';
import 'package:projeto_flutter_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  preferredSize: Size(
                    largura,
                    alturaBarra,
                  ),
                  child: const MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(
                    largura,
                    alturaBarra,
                  ),
                  child: const WebAppBar(),
                ),
          body: Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto(
                  descricao: 'Pneu Goodyear aro 16',
                  preco: '800,00',
                  imagem: 'p2.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung S9',
                  preco: '4.300,00',
                  imagem: 'p3.jpg',
                ),
                ItemProduto(
                  descricao: 'Kit Multimídia',
                  preco: '2.200,00',
                  imagem: 'p1.jpg',
                ),
                ItemProduto(
                  descricao: 'Samsung Edge',
                  preco: '2.200,00',
                  imagem: 'p4.jpg',
                ),
                ItemProduto(
                  descricao: 'Galaxy S10',
                  preco: '6.100,00',
                  imagem: 'p5.jpg',
                ),
                ItemProduto(
                  descricao: 'Iphone 10',
                  preco: '7.999,00',
                  imagem: 'p6.jpg',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
