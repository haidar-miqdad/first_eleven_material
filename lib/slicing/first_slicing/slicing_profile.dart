import 'package:first_eleven_material/slicing/first_slicing/sections/header_profile_section.dart';
import 'package:first_eleven_material/slicing/first_slicing/sections/item_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'icons/icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int onItemTapped = 0;

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
            ),
          ),
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
            const HeaderProfile(),
            const SizedBox(
              height: 28,
            ),
            ItemProfile(
              title: 'My Orders',
              subtitle: 'Alraedy have 12 orders',
            ),
            ItemProfile(
              title: 'Shipping addresses',
              subtitle: '3 addresses',
            ),
            ItemProfile(title: 'Payment methods', subtitle: 'Visa **34'),
            ItemProfile(title: 'prom codes', subtitle: 'Enter your prom code'),
            ItemProfile(title: 'My reviews', subtitle: 'See all reviews'),
            ItemProfile(
              title: 'Settings',
              subtitle: 'Notifications, Password',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.06), offset: const Offset(0, -4))]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey,
            currentIndex: onItemTapped,
            onTap: (index) {
              setState(() {
                onItemTapped = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    home,
                    colorFilter: ColorFilter.mode(onItemTapped == 0 ? Colors.amber : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    cart,
                    colorFilter: ColorFilter.mode(onItemTapped == 1 ? Colors.amber : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    bag,
                    colorFilter: ColorFilter.mode(onItemTapped == 2 ? Colors.amber : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Bag'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    heart,
                    colorFilter: ColorFilter.mode(onItemTapped == 3 ? Colors.amber : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    profile,
                    colorFilter: ColorFilter.mode(onItemTapped == 4 ? Colors.amber : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
