import 'package:flutter/material.dart';
import 'package:pertemuan6/model/travel.dart';

var data = Travel();

Widget buildgridview(){
  return GridView.builder(
    itemCount: data.travelData.length,
    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      ) ,
    itemBuilder: (context, index) {
      var item = data.travelData[index];
      return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(item['image']!),
            SizedBox(height: 5,),
            Text(item['title']!)
          ],
        ),
      );
    }
    );
}