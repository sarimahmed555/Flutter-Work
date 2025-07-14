import 'package:flutter/material.dart';
import 'profile_screen.dart'; // Make sure this is imported

class SitterListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> sitters = [
    {
      "name": "America C.",
      "title": "Star Sitter",
      "price": 40,
      "distance": "3.0 mi. away",
      "rating": "5.0 · 109 reviews",
      "repeatClients": "40 repeat clients",
      "availability": "Availability updated yesterday",
      "image": "assets/sitter1.png",
    },
    {
      "name": "Fortune C.",
      "title": "",
      "price": 34,
      "distance": "0.3 mi. away",
      "rating": "5.0 · 8 reviews",
      "repeatClients": "6 repeat clients",
      "availability": "Availability updated yesterday",
      "image": "assets/sitter2.png",
    },
    {
      "name": "Cindy U.",
      "title": "",
      "price": 35,
      "distance": "0.6 mi. away",
      "rating": "5.0 · 22 reviews",
      "repeatClients": "8 repeat clients",
      "availability": "Availability updated yesterday",
      "image": "assets/sitter3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Boarding', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text("Skip", style: TextStyle(color: Colors.grey[600])),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF6F3E8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.verified_user, color: Colors.black87, size: 18),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      "We background check every sitter.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              "🔍 Find a match",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              "Add dates to see boarding sitters who’ll be available for your need. These are sitters in your area, but they might not be available.",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: sitters.length,
                itemBuilder: (context, index) {
                  final sitter = sitters[index];

                  return GestureDetector(
                    onTap: () {
                      if (sitter['name'] == "America C.") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ProfileScreen()),
                        );
                      }
                    },
                    child: Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(sitter['image']),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${index + 1}. ${sitter['name']}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  if (sitter['title'].isNotEmpty)
                                    Text(
                                      sitter['title'],
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF8F9E73),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  const SizedBox(height: 4),
                                  Text("LOTS of SPACE to RO...",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[800])),
                                  Text(sitter['distance'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700])),
                                  Text(sitter['rating'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700])),
                                  Text(sitter['repeatClients'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700])),
                                  Text(sitter['availability'],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700])),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("from",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                                Text(
                                  "\$${sitter['price']}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF8F9E73)),
                                ),
                                const Text("per night",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
