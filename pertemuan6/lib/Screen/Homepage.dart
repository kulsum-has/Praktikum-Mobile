import 'package:flutter/material.dart';
import 'package:pertemuan6/widget/list.dart';
import 'package:pertemuan6/widget/grid.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Katalog Wisata'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list_alt_outlined),text: 'List view',),
              Tab(icon: Icon(Icons.grid_on),text: 'Grid View',),
            ]),
        ),
        body: TabBarView(
          children: [
            buildlistview(),
            buildgridview()

          ]
          ),


      )
      );
  }
}