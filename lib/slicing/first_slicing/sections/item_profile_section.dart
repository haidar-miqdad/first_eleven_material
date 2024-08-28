
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemProfile extends StatelessWidget {
  String? title;
  String? subtitle;

  ItemProfile({
    super.key,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  '$subtitle',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff9B9B9B),
                  ),
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
    );
  }
}
