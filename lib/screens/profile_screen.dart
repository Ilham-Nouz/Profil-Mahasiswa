import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Foto + info mengisi ruang yang tersedia
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 24),
                    ProfileHeader(
                      name: 'Kucing CN',
                      nim: '25.11.0000',
                      imageUrl: 'assets/images/CN.jpg',
                    ),
                    SizedBox(height: 24),
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'Mahasigma123@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    SizedBox(height: 16),
                    SocialMediaRow(),
                  ],
                ),
              ),
            ),
          ),
          // Tombol aksi di bawah
          const Padding(padding: EdgeInsets.all(16.0), child: ActionButtons()),
        ],
      ),
    );
  }
}
