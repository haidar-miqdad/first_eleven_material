import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}



