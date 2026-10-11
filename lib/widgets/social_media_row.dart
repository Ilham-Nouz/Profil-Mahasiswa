import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnack(BuildContext context, String nama) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$nama diklik'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.pink),
          tooltip: 'Instagram',
          onPressed: () => _showSnack(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.work, color: Colors.blue),
          tooltip: 'LinkedIn',
          onPressed: () => _showSnack(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code, color: Colors.black87),
          tooltip: 'GitHub',
          onPressed: () => _showSnack(context, 'GitHub'),
        ),
      ],
    );
  }
}
