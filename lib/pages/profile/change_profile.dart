import 'package:flutter/material.dart';
import 'package:green_app/widgets/profilepage/appbarchange_profile.dart';

class ChangeProfile extends StatelessWidget {
  const ChangeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChangeProfile(context: context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset('assets/images/profiledummy.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              children: [
                ProfileInfo(text1: 'Nama Lengkap', text2: 'Romario Marcal'),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ProfileInfo(text1: 'Email', text2: 'romariomarcal11@gmail.com'),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ProfileInfo(text1: 'Alamat', text2: 'Jalan Sukapura No. 03'),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ProfileInfo(text1: 'Nomor Telepon', text2: '081217741948'),
                Divider(),
              ],
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(98, 193, 114, 5),
            ),
            child: const Text(
              'Simpan',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
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
