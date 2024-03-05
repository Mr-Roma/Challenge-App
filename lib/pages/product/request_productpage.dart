import 'package:flutter/material.dart';
import 'package:green_app/widgets/requestpage/appbar_request.dart';

class RequestProductPage extends StatelessWidget {
  const RequestProductPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBarRequest(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              const Text(
                'Foto Produk',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  width: 76,
                  height: 72,
                  child: const Icon(Icons.camera_alt_outlined),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const DescriptionRequest(
                namaProduk: 'Nama Produk',
                namaSayur: 'Sayur Singkong',
              ),
              const Divider(),
              const DescriptionRequest(
                namaProduk: 'Deskripsi Produk',
                namaSayur: 'Produk Fresh dan menyenangkan',
              ),
              const Divider(),
              const DescriptionRequest(
                namaProduk: 'Kategori',
                namaSayur: 'Sayuran',
              ),
              const Divider(),
              const DescriptionRequest(
                namaProduk: 'Harga',
                namaSayur: 'RP 50.000',
              ),
              const Divider(),
              const DescriptionRequest(
                namaProduk: 'Jumlah',
                namaSayur: '1',
              ),
              const Divider(),
              const DescriptionRequest(
                namaProduk: 'Durasi tahan',
                namaSayur: '2-4 hari',
              ),
              const Divider(),
              const Text(
                'Berat',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const Row(
                children: [
                  Text(
                    'Dalam gram',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text('(Contoh: 500 gram untuk 1 ikat)'),
                ],
              ),
              const Text('500'),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Change the color to green
                  ),
                  child: const Text(
                    'Kirim',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DescriptionRequest extends StatelessWidget {
  final String namaProduk;
  final String namaSayur;
  const DescriptionRequest(
      {Key? key, required this.namaProduk, required this.namaSayur});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
      children: [
        Text(
          namaProduk,
          style: const TextStyle(
              fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w700),
        ),
        Text(
          namaSayur,
          style: const TextStyle(
              fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
