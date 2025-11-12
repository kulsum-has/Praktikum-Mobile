import 'package:flutter/material.dart';
import 'package:pertemuan6/model/travel.dart';

var data = Travel();

Widget buildlistview(){
  return ListView.builder(
    itemCount: data.travelData.length,
    itemBuilder: (context, index) {
      var item = data.travelData[index];
      return Card(
        child: ListTile(
          leading: Image.network(item['image']!),
          title: Text(item['title']!),
        ),
      );
    },
  );
}