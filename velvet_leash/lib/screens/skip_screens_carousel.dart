// skip_screens_carousel.dart
import 'package:flutter/material.dart';
import 'select_service_screen.dart';

class SkipScreensCarousel extends StatefulWidget {
  const SkipScreensCarousel({super.key});

  @override
  State<SkipScreensCarousel> createState() => _SkipScreensCarouselState();
}

class _SkipScreensCarouselState extends State<SkipScreensCarousel> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => SelectServiceScreen()),
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            // PageView
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) => setState(() => _currentPage = index),
                children: [
                  _buildSlide(
                    image: 'assets/skip1.png',
                    title: 'Compassionate Pet Care in Your Neighborhood',
                    description:
                        "Welcome to the world's largest network of 5-star pet sitters and dog walkers.",
                  ),
                  _buildSlide(
                    image: 'assets/skip2.png',
                    title: 'Real-Time Updates and Peace of Mind',
                    description:
                        "Stay informed with photo updates, GPS tracking, and personalized care notes.",
                  ),
                  _buildSlide(
                    image: 'assets/skip3.png',
                    title: 'Boarding, Day Care, and More for Your Furry Friends',
                    description:
                        "Find reliable and loving pet boarding and day care services around you.",
                  ),
                  _buildSlide(
                    image: 'assets/skip4.png',
                    title: 'Join Thousands of Happy Pet Owners',
                    description:
                        "Explore trusted pet care options today. Your pets deserve the best!",
                    showGetStarted: true,
                  ),
                ],
              ),
            ),
            // Indicators
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => _buildIndicator(index == _currentPage)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlide({
    required String image,
    required String title,
    required String description,
    bool showGetStarted = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 280,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          if (showGetStarted)
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => SelectServiceScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8F9E73),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF8F9E73) : Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
