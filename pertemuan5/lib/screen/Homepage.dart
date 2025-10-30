import 'package:flutter/material.dart';
import 'package:pertemuan5/model/makanan.dart';
import 'package:pertemuan5/screen/halamandetail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    var menus = Makanan();
    return Scaffold(

      appBar: AppBar(
        title: Text("Malas Ngoding"), backgroundColor: Colors.amber
      ),
      body: ListView.builder(
        itemCount: menus.menu.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: InkWell(
              focusColor: Colors.deepOrange,
              hoverColor: Colors.red,
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Halamandetail(
                    menu: menus.menu[index], 
                    harga: menus.harga[index]

                    ),
                    )
                  
                  );
              },            
              child: ListTile(
                leading: Icon(
                  Icons.private_connectivity_rounded,
                  color: Colors.amber,
                ),
              title: Text(menus.menu[index]),
              subtitle: Text(menus.harga[index]),
              trailing: Icon(
                Icons.chevron_right_rounded,
                color: Colors.black,
              ),
              
              
            ),
            )

          );
        },


        ),

    );
  }
}