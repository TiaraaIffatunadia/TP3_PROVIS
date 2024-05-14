import 'package:rent_car/view/car_list.dart';
import 'package:rent_car/view/daftar_car.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: "Rental")
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/chat');
          }
          else{
            Navigator.pushNamed(context, '/rental');
          };
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                        height: 110, width: double.infinity, color: Color(0xFF0472BC)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images.png'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(35),
                                            border: Border.all(
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                                width: 2))),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Selamat Datang !",
                                                  style:
                                                      GoogleFonts.montserrat(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  "Daftar Mobil",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              DaftarCar(
                                imagePath: "assets/star.jpg",
                                nameCar: "Hyundai - Stargazer",
                                harga: "695k/hari",
                                fasilitas: "Kunci lepas, tanpa supir, 2 bagasi, 6 kursi",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DaftarCarDetail(
                                        imagePath: "assets/star.jpg",
                                        nameCar: "Hyundai - Stargazer",
                                        harga: "695k/hari",
                                        fasilitas: "Kunci lepas, tanpa supir, 2 bagasi, 6 kursi, automatic",
                                        phoneNumber: "082136619175",
                                        deskripsi: "Harga 1 hari untuk penggunaan dari 00.00 ke 23.59. Bisa refund. Ada asuransi mobil",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              DaftarCar(
                                imagePath: "assets/yaris.jpg",
                                nameCar: "Toyota - Yaris",
                                harga: "720k/hari",
                                fasilitas: "Kunci lepas, tanpa supir, 2 bagasi, 5 kursi",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DaftarCarDetail(
                                        imagePath: "assets/yaris.jpg",
                                        nameCar: "Toyota - Yaris",
                                        harga: "720k/hari",
                                        fasilitas: "Kunci lepas, tanpa supir, 2 bagasi, 5 kursi, automatic",
                                        phoneNumber: "082136619175",
                                        deskripsi: "Harga 1 hari untuk penggunaan dari 00.00 ke 23.59. Bisa refund. Ada asuransi mobil",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              DaftarCar(
                                imagePath: "assets/aya.jpg",
                                nameCar: "Daihatsu Ayla",
                                harga: "457k/hari",
                                fasilitas: "Kunci lepas, dengan supir, 2 bagasi, 4 kursi",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DaftarCarDetail(
                                        imagePath: "assets/aya.jpg",
                                        nameCar: "Daihatsu Ayla",
                                        harga: "457k/hari",
                                        fasilitas: "Kunci lepas, tanpa supir, 2 bagasi, 4 kursi, manual",
                                        phoneNumber: "082136619175",
                                        deskripsi: "Harga 1 hari untuk penggunaan dari 00.00 ke 23.59. Bisa refund. Ada asuransi mobil",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              DaftarCar(
                                imagePath: "assets/agya.jpg",
                                nameCar: "Toyota - Agya",
                                harga: "175k/12 jam",
                                fasilitas: "Kunci lepas, dengan supir, 2 bagasi, 4 kursi",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DaftarCarDetail(
                                        imagePath: "assets/agya.jpg",
                                        nameCar: "Toyota - Agya",
                                        harga: "175k/12 jam",
                                        fasilitas: "Kunci lepas, dengan supir, 2 bagasi, 4 kursi",
                                        phoneNumber: "082136619175",
                                        deskripsi: "Penggunaan selama 12 jam (maks. 23:59 jika rental dimulai setelah jam 12:00). Penggunaan di Area 0. Gratis antar dan jemput di Area 0. Belum termasuk biaya bensin, makan supir per hari, dan biaya tol. Bisa refund. Tidak bisa reschedule.",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ]
                          ),
                        ),
                      ),     
                    );
                   }
                  }