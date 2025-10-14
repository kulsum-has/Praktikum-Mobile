
import 'package:flutter/material.dart';

void main() {
  runApp(kalkulatorBMI());
}

class kalkulatorBMI extends StatelessWidget {
  const kalkulatorBMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tampilankalkulatorbmi());
  }
}

class Tampilankalkulatorbmi extends StatefulWidget {
  const Tampilankalkulatorbmi({super.key});

  @override
  State<Tampilankalkulatorbmi> createState() => _TampilankalkulatorbmiState();
}

class _TampilankalkulatorbmiState extends State<Tampilankalkulatorbmi> {
final _beratcontroller= TextEditingController();
final _tinggicontroller= TextEditingController();

double? _hasilbmi;
String _komentar = "Masukkan Nilai";

void hasil (){
final double berat = double.tryParse(_beratcontroller.text)?? 0;
final double tinggiInCm = double.tryParse(_tinggicontroller.text)?? 0;
setState(() {
  if(berat > 0 && tinggiInCm >0){
  final double tinggiInM = tinggiInCm /100;
  final double bmi = berat / (tinggiInM*tinggiInM);
  _hasilbmi =bmi;

  if (bmi < 18.5){
    _komentar = "ceking";
  }else if (bmi < 25){
    _komentar = "Anjayy langsing";
  }else if (bmi < 30){
    _komentar = "aduhhh kamu kegendutan";
  }else{
    _komentar = "obesitas!!!! AYO DIETT";
  }


}else {
  _komentar = "Masukkan Data yang valid";
}
});


}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          TextField(
            controller: _beratcontroller,
          ),
          





          TextField(
        controller: _tinggicontroller,


         ),
         SizedBox(height: 20,),
          
          ElevatedButton(
            onPressed: hasil,
            child: Text("Hitung BMI")
          ),
          SizedBox(height: 30,),

          Text("Hasil"),
          Container(
            child: Column(
              children: [
                Text(
                  _hasilbmi?.toStringAsFixed(1)?? "--"
                ),
                Text(_komentar)
              ],
            ),
          ),
        ]
       ),
      ),
    );
  }
}