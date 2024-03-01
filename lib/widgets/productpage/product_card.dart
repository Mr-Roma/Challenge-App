import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final bool process = false;
  const ProductCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                width: 163,
                height: 80,
                color: Colors.green.shade200,
                child: Center(
                  child: Image.asset("assets/images/sayur.png"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Container(
                width: 163,
                height: 85,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brokoli",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      Text(process == false ? 'Selesai' : 'Proses'),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: SizedBox(
                          width: 80, // Adjust the width as needed
                          height: 30, // Adjust the height as needed
                          child: ElevatedButton(
                            onPressed: () {
                              // Action to perform when the button is pressed
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(
                                    98, 193, 114, 1.0), // Corrected opacity
                              ),
                            ),
                            child: Text(
                              'Detail',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white), // Adjust font size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
