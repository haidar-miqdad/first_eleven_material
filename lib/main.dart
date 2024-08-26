import 'package:first_eleven_material/image.dart';
import 'package:first_eleven_material/navigator/navigator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'column.dart';
import 'container.dart';
import 'gridview/gridview.dart';
import 'gridview/gridview_builder.dart';
import 'listview/listview.dart';
import 'listview/listview_separated.dart';
import 'row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: GoogleFonts.poppins(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/ayam.jpeg',
                    width: 64,
                    height: 64,
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Matilda Brown',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'matildabrown@gmail.com',
                      style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: const Color(0xff9B9B9B) // 0xff initial color int
                          ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Orders',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                     const SizedBox(height: 9,),
                      Text(
                        'Already have 12 orders',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          color: const Color(0xff9B9B9B)
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Addresses',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                     const SizedBox(height: 9,),
                      Text(
                        '3 Address',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          color: const Color(0xff9B9B9B)
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Methods',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                     const SizedBox(height: 9,),
                      Text(
                        'Visa **34',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          color: const Color(0xff9B9B9B)
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B
                    ),
                  ),
                ],
              ),
            ),
Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo Codes',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                     const SizedBox(height: 9,),
                      Text(
                        'You have special promo codes',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          color: const Color(0xff9B9B9B)
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B
                    ),
                  ),
                ],
              ),
            ),
Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My reviews',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                     const SizedBox(height: 9,),
                      Text(
                        'review for 4 items',
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                          color: const Color(0xff9B9B9B)
                        ),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Settings',
                        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        'notifications, password, help',
                        style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.normal, color: const Color(0xff9B9B9B)),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff9B9B9B),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
