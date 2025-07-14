import 'package:flutter/material.dart';
import 'sitter_list_screen.dart';

class SearchingScreen extends StatefulWidget {
  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  String dogSize = "0-15";
  String dogAge = "Adult";
  String getAlongWithDogs = "Yes";
  String getAlongWithCats = "Yes";

  Widget _buildToggleGroup({
    required List<String> options,
    required String selected,
    required Function(String) onSelected,
  }) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: options.map((opt) {
        final isActive = opt == selected;
        return ChoiceChip(
          label: Text(opt),
          selected: isActive,
          onSelected: (_) => onSelected(opt),
          labelStyle: TextStyle(
            color: isActive ? Color(0xFF8F9E73) : Colors.black,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.transparent,
          selectedColor: Colors.transparent,
          side: BorderSide(
            color: isActive ? Color(0xFF8F9E73) : Colors.grey.shade400,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),

            // Main Card
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    Text(
                      "Tell us about your dogs",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),

                    // Dog Size
                    Text("Dog size (lbs)", style: TextStyle(fontSize: 14)),
                    SizedBox(height: 10),
                    _buildToggleGroup(
                      options: ["0-15", "16-40", "41-100", "101+"],
                      selected: dogSize,
                      onSelected: (val) => setState(() => dogSize = val),
                    ),

                    SizedBox(height: 20),

                    // Dog Age
                    Text("How old are your dogs?", style: TextStyle(fontSize: 14)),
                    SizedBox(height: 10),
                    _buildToggleGroup(
                      options: ["Puppy (less than 1 year)", "Adult"],
                      selected: dogAge,
                      onSelected: (val) => setState(() => dogAge = val),
                    ),

                    SizedBox(height: 20),

                    // Get along with dogs
                    Text("Does your dog get along with other dogs?", style: TextStyle(fontSize: 14)),
                    SizedBox(height: 10),
                    _buildToggleGroup(
                      options: ["Yes", "No", "Unsure"],
                      selected: getAlongWithDogs,
                      onSelected: (val) => setState(() => getAlongWithDogs = val),
                    ),

                    SizedBox(height: 20),

                    // Get along with cats
                    Text("Does your dog get along with cats?", style: TextStyle(fontSize: 14)),
                    SizedBox(height: 10),
                    _buildToggleGroup(
                      options: ["Yes", "No", "Unsure"],
                      selected: getAlongWithCats,
                      onSelected: (val) => setState(() => getAlongWithCats = val),
                    ),
                  ],
                ),
              ),
            ),

            // Search Button
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SitterListScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8F9E73),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Search Now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
