import 'package:flutter/material.dart';

class AppBarProduct extends PreferredSize {
  AppBarProduct({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(130),
          child: SafeArea(
            child: Container(
              color: const Color.fromRGBO(98, 193, 114, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      'List of Products',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5, left: 10, right: 10, top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for Products',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}
