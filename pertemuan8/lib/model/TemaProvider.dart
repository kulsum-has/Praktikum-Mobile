import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemaProvider extends ChangeNotifier{
  ThemeMode _TemaMode = ThemeMode.light;
  ThemeMode get Temamode => _TemaMode;
  bool get ModeGelap => _TemaMode == ThemeMode.dark;

  static String kunci = "kunci";

  TemaProvider(){

  }

  void loadtema() async {
    final koneksi = await SharedPreferences.getInstance();
    final gelap = koneksi.getBool(kunci)?? false;

    _TemaMode = gelap? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

  }

  void gantitema (bool aktif)async{
    _TemaMode = aktif ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();

    final koneksi = await SharedPreferences.getInstance();
    koneksi.setBool(kunci, aktif);

  }
}