import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_app/widgets/profilepage/appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  void singUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProductProfile(
        context: context,
      ),
      backgroundColor: Colors.grey.shade300,
      body: const Padding(
        padding: EdgeInsets.only(top: 30, left: 30),
        child: Column(
          children: [
            ProfileInfo(
              text1: 'Nama Lengkap',
              text2: 'Romario Marcal',
            ),
            SizedBox(
              height: 15,
            ),
            ProfileInfo(
              text1: 'Email',
              text2: 'romariomarcal11@gmail.com',
            ),
            SizedBox(
              height: 15,
            ),
            ProfileInfo(
              text1: 'Nomor Telepon',
              text2: '081217741948',
            ),
            SizedBox(
              height: 15,
            ),
            ProfileInfo(
              text1: 'Alamat',
              text2: 'Jl. Sukapura No. 03',
            ),
            Divider(),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                ProfileInfo(
                  text1: 'Keamanan',
                  text2: 'Ubah Password',
                ),
                Positioned(
                  right: 30,
                  child: Icon(Icons.arrow_circle_right),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logout,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LogOut Akun',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Colors.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String text1;
  final String text2;
  const ProfileInfo({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: const TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 170, 170, 170),
                fontSize: 14),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text2,
            style: const TextStyle(
                fontFamily: 'Poppins', color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
