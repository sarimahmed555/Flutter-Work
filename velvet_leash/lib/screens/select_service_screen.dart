import 'package:flutter/material.dart';
import 'boarding_screen.dart'; // 👈 import your boarding screen

class SelectServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Curved background bottom image
          Positioned(
            bottom: -150,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/grass.png',
              fit: BoxFit.cover,
              height: 100,
            ),
          ),

          // Main Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select a Service",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),

                // Service cards
                _buildServiceCard(
                  icon: Icons.home,
                  title: "Boarding",
                  subtitle: "in the sitter’s home",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BoardingScreen()),
                    );
                  },
                ),
                _buildServiceCard(
                  icon: Icons.house_outlined,
                  title: "House Sitting",
                  subtitle: "in your home",
                ),
                _buildServiceCard(
                  icon: Icons.visibility_outlined,
                  title: "Drop-In Visits",
                  subtitle: "visits in your home",
                ),
                _buildServiceCard(
                  icon: Icons.pets,
                  title: "Doggy Day Care",
                  subtitle: "in the sitter’s home",
                ),
                _buildServiceCard(
                  icon: Icons.directions_walk,
                  title: "Dog Walking",
                  subtitle: "in your neighborhood",
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF8F9E73),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Your Pet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF8F9E73)),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        onTap: onTap, // 🔁 use dynamic callback here
      ),
    );
  }
}
