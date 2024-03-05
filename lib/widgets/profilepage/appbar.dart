import 'package:flutter/material.dart';
import 'package:green_app/pages/profile/change_profile.dart';

class AppBarProductProfile extends StatelessWidget
    implements PreferredSizeWidget {
  final BuildContext context;

  AppBarProductProfile({Key? key, required this.context}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(98, 193, 114, 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/profiledummy.png'),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Romario Marcal',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'romariomarcal11@gmail.com',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangeProfile(),
                      ),
                    );
                  },
                  child: Image.asset('assets/images/brush.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
