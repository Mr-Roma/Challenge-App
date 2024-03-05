import 'package:flutter/material.dart';
import 'package:green_app/pages/product/product_page.dart';

class AppBarRequest extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  AppBarRequest({Key? key, required this.context}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        color: const Color.fromRGBO(98, 193, 114, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_circle_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                      'Kirim Permnintaan',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
