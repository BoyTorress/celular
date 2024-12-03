import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String data;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              SizedBox(height: 10),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(data, style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
