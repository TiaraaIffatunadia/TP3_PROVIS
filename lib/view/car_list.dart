import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import 'package:rent_car/view_model/daftarkosdetailprovider.dart';

class DaftarCarDetail extends StatelessWidget {
  final String imagePath;
  final String nameCar;
  final String harga;
  final String fasilitas;
  final String phoneNumber;
  final String deskripsi;

  DaftarCarDetail({
    required this.imagePath,
    required this.nameCar,
    required this.harga,
    required this.fasilitas,
    required this.phoneNumber,
    required this.deskripsi,
  });
  
  @override
  Widget build(BuildContext context) {
    final daftarCarDetailProvider = Provider.of<DaftarCarDetailProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(nameCar, style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF0472BC),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagePath, height: 300,),
            Text(nameCar),
            Text("Harga: $harga"),
            Text("Fasilitas: $fasilitas"),
            SizedBox(height: 16.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(deskripsi),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                launch('whatsapp://send?phone=${daftarCarDetailProvider.phoneNumber}');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0472BC), // Mengubah warna latar belakang tombol 
              ),
              child: Text("Booking mobil", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), // Mengubah warna teks
            ),
            SizedBox(height: 16.0),
          ],
        )
      ),
    );
  }
}