import 'package:flutter/material.dart';
import 'searching_screen.dart';

class BoardingScreen extends StatefulWidget {
  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  String selectedPet = "Dog";
  DateTime? selectedDate;
  String selectedLocation = "Park Row, TX 77449, USA"; // static for now

  void _pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (date != null) {
      setState(() => selectedDate = date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                    ),
                  const Text("Skip", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 20),

              const Text("Boarding",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 26,
                      fontWeight: FontWeight.w700)),

              const SizedBox(height: 10),
              const Text("When do you need a sitter?",
                  style: TextStyle(fontSize: 16)),

              const SizedBox(height: 20),

              // Pet Type
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Pet type(s)", style: TextStyle(fontSize: 14)),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _buildPetTypeButton("Dog"),
                        const SizedBox(width: 10),
                        _buildPetTypeButton("Cat"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    ListTile(
                      title: const Text("Dates"),
                      subtitle: Text(selectedDate == null
                          ? "Select your dates"
                          : "${selectedDate!.toLocal()}".split(" ")[0]),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: _pickDate,
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text("Your Location"),
                      subtitle: Text(selectedLocation),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        // Future: Open location selector or map
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Next Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SearchingScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8F9E73),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Next",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPetTypeButton(String type) {
    final isSelected = selectedPet == type;
    return GestureDetector(
      onTap: () => setState(() => selectedPet = type),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF8F9E73) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          type,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
