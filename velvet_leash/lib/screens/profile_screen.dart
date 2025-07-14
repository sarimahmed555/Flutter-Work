
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String activeTab = 'Info';
  final tabs = ['Info', 'Reviews', 'Services'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, size: 24),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 20),
                ],
              ),
            ),
              Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backgroundsitter.png'),
                  fit: BoxFit.cover,
                ),
              ),
             ),
            // Tab Bar
            Container(
              color: Colors.white,
              child: Row(
                children: tabs.map((tab) {
                  final isActive = activeTab == tab;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => activeTab = tab),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: isActive ? const Color(0xFF73865C) : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          color: isActive ? const Color(0xFFF7F8F9) : Colors.white,
                        ),
                        child: Text(
                          tab,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
                            fontSize: 15,
                            color: isActive ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          
            // Main Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileHeader(),
                    if (activeTab == 'Info') ...[
                      _buildStarSitterNotice(),
                      _buildAbout(),
                      _buildSkills(),
                      _buildHomeDetails(),
                      _buildLocationMap(),
                      _buildBottomButton(),
                    ],
                    if (activeTab == 'Reviews') _buildReviews(),
                    if (activeTab == 'Services') _buildServices(),
                  ],
                ),
              ),
            ),

            if (activeTab == 'Reviews')
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: _buildBottomButton(),
              ),
          ],
        ),
      ),
    );
  }

  // ===========================
  // Header
  Widget _buildProfileHeader() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/backgroundsitter.png"),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("America C.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 4),
                Text("Lover of all dogs 🐶 | Houston, TX", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text("5.0 · 109 reviews", style: TextStyle(fontSize: 12, color: Colors.black)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Color(0xFF8F9E73),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("Star Sitter", style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
    );
  }

  // ===========================
  // Info Section
  Widget _buildStarSitterNotice() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("America C. has Star Sitter status", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(
            "This highlights responsive sitters who make it easier for pet parents to find the best care for their pets.",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget _buildAbout() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            "What I value? Well... dogs and good coffee! I started watching dogs in 2015 and never stopped. "
            "I love the joy they bring, and the wiggles! 🐕\n\n"
            "I live by the park and have a big fenced yard for your pups to explore.",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }

  Widget _buildSkills() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("✓ Good medication & treatment history"),
          Text("✓ 10+ years dog experience"),
          Text("✓ Special needs & aging experience"),
        ],
      ),
    );
  }

  Widget _buildHomeDetails() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("✓ I live in a house"),
          Text("✓ Has a fenced yard"),
          Text("✓ Has no other household pets"),
          Text("✓ Has children over 10"),
        ],
      ),
    );
  }

  Widget _buildLocationMap() {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Location", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("Katy, TX"),
          SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: Placeholder(), // replace with actual map later
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/contact_sitter');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFA6B48A),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          minimumSize: const Size(double.infinity, 48),
        ),
        child: const Text("Contact this sitter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  // ===========================
  // Reviews Tab
  Widget _buildReviews() {
    return Column(
      children: [
        _buildReviewItem(
          name: "Dejante G.",
          date: "June 23, 2025",
          image: "https://randomuser.me/api/portraits/women/44.jpg",
          review:
              "America C was PHENOMENAL. She took the extra time needed to really tend to our pup and sent updates.",
        ),
        _buildReviewItem(
          name: "Lorri W.",
          image: "https://randomuser.me/api/portraits/women/65.jpg",
          review: "Becky took great care of Oliver!!!",
        ),
      ],
    );
  }

  Widget _buildReviewItem({
    required String name,
    String? date,
    required String image,
    required String review,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(image), radius: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                if (date != null)
                  Text(date, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                if (date != null)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "VERIFIED STAY",
                      style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                Text(review, style: const TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ===========================
  // Services Tab
  Widget _buildServices() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text("🛎️ Services Section Placeholder"),
    );
  }
}
