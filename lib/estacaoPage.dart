import 'package:flutter/material.dart';
import 'package:pcdmetro/HomeEstacao.dart';
import '../models/estacao.dart';

class EstacaoPage extends StatefulWidget {
  late Estacao estacao;
  EstacaoPage({super.key, required this.estacao});

  @override
  State<EstacaoPage> createState() => _EstacaoPageState();
}

class _EstacaoPageState extends State<EstacaoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.estacao.nome),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.train),
                  text: 'Embarque',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Desembarque',
                ),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: [
              HomeEstacao(),
              Container(),
            ],
          )),
    );
  }
}
