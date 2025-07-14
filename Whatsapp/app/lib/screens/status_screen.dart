import 'package:flutter/material.dart';
import 'package:app/screens/animated_screen.dart';
import 'package:app/screens/video_screen.dart';
import 'package:app/screens/widgets/category.dart' as custom_category;

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Updates', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        
      actions: [
         Padding(
            padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.search, color: Colors.white, size: 20,),
            
          ),
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text('New Group'),
            ),
            PopupMenuItem(
              child: Text('Pricavy'),
            ),
            PopupMenuItem(
              child: Text('Settings'),
            ),
          ],
        ),
      ],
      ),
      
      body: ListView(
      children: [
                // Search Box
 
    ListTile(title: Text('Status')),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade800,
                    child: Icon(Icons.person, size: 30, color: Colors.white),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add, size: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text("Add", style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
          
      SizedBox(width: 20),

// Tile 1: Abeer
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Abeer',
          userImage: 'assets/images/alina.jpg',
          videoPath: 'assets/videos/video1.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/alina.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Abeer", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 2: Nasit Hr
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Nasit Hr',
          userImage: 'assets/images/nasit.jpg',
          videoPath: 'assets/videos/video2.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/nasit.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Nasit Hr", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 3: Zurain
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Zurain',
          userImage: 'assets/images/zurain.jpg',
          videoPath: 'assets/videos/video3.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/zurain.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Zurain", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 4: Ahsan
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Ahsan',
          userImage: 'assets/images/ahsan.jpg',
          videoPath: 'assets/videos/video4.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/ahsan.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Ahsan", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 5: Razi
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Razi',
          userImage: 'assets/images/razi.jpg',
          videoPath: 'assets/videos/video5.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/razi.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Razi", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 6: Ali
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Ali',
          userImage: 'assets/images/ali.jpg',
          videoPath: 'assets/videos/video6.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/ali.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Ali", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 7: Ahmed
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Ahmed',
          userImage: 'assets/images/ahmed.jpg',
          videoPath: 'assets/videos/video7.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/ahmed.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Ahmed", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

SizedBox(width: 20),

// Tile 8: Murtaza
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => VideoScreen(
          userName: 'Murtaza',
          userImage: 'assets/images/murtaza.jpg',
          videoPath: 'assets/videos/video8.mp4',
        ),
      ),
    );
  },
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/murtaza.jpg"),
        ),
      ),
      SizedBox(height: 6),
      Text("Murtaza", style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  ),
),

        ],
      ),
    ),
          //Status
            ListTile(
              title: Text('Channels'),
              trailing: Text('Explore', style: TextStyle(color: Colors.white)),
            ),
          ListTile(
            title: Text('Pakistan Jobs'),
            subtitle: Text('Latest Job Oppurtities'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/652355/pexels-photo-652355.jpeg',
              ),
            ),
            trailing: Badge(
              child: 
              Text('32', style: TextStyle(color: const Color.fromARGB(255, 15, 207, 21)),),
            ),
          ),
          ListTile(
            title: Text('Free Wallpaper'),
            subtitle: Text('New 4k Wallpapers Available'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/4512439/pexels-photo-4512439.jpeg',
              ),
            ),
                trailing: Badge(
              child: 
              Text('1222', style: TextStyle(color: const Color.fromARGB(255, 15, 207, 21)),),
            ),
          ),
          ListTile(
            title: Text('Geo News'),
            subtitle: Text('A Traffic Rules Strictness Over and Over'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.geo.tv/assets/uploads/updates/2022-09-30/443559_2001360_updates.jpg',
              ),
            ),
                 trailing: Badge(
               child: 
              Text('98', style: TextStyle(color: const Color.fromARGB(255, 15, 207, 21)),),
            ),
          ),
          ListTile(
            title: Text('CNN News'),
            subtitle: Text('Worldwide Crackdown In All Countries'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://archive.org/download/logocnnbrk/logo%20cnn%20brk.jpg',
              ),
            ),
              trailing: Badge(
             child: 
              Text('132', style: TextStyle(color: const Color.fromARGB(255, 15, 207, 21)),),
            ),
          ),
          ListTile(
            title: Text('Free Content By Hashim'),
            subtitle: Text('Free AI Subcription'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.kaspersky.com/content/en-global/images/repository/isc/2022/what-is-hacking-2.jpg',
              ),
            ),
          trailing: Badge(
             child: 
              Text('342', style: TextStyle(color: const Color.fromARGB(255, 15, 207, 21)),),
            ),
          ),
          SizedBox(height: 15,),
           ListTile(
              title: Text('Find channels to follow'),
             
            ),
          ListTile(
            title: Text('Caron Stories'),
            subtitle: Text('136k followers'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2954199/pexels-photo-2954199.jpeg ',
              ),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 48, 105, 48),
              ),
              onPressed: () {

              },
              child: Text('Follow', style: TextStyle(color:Colors.grey))
            ),
          ),
          ListTile(
           title: Text('Motu & Patlu'),
            subtitle: Text('86k followers'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/474x/74/0e/f9/740ef9834c58355dea37350d256a6ebb.jpg',
              ),
            ),
           trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 48, 105, 48),
              ),
              onPressed: () {

              },
              child: Text('Follow', style: TextStyle(color:Colors.grey))
            ),
          ),
          ListTile(
            title: Text('Deserts'),
            subtitle: Text('345k followers'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/205961/pexels-photo-205961.jpeg',
              ),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 48, 105, 48),
              ),
              onPressed: () {

              },
              child: Text('Follow', style: TextStyle(color:Colors.grey))
            ),
          ),
          ListTile(
            title: Text('Spoken English'),
            subtitle: Text('240k followers'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/5676740/pexels-photo-5676740.jpeg',
              ),
            ),
              trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 48, 105, 48),
              ),
              onPressed: () {

              },
              child: Text('Follow', style: TextStyle(color:Colors.grey))
            ),
          ),
          ListTile(
            title: Text('Funny Videos'),
            subtitle: Text('29k followers'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/207983/pexels-photo-207983.jpeg',
              ),
            ),
          trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 48, 105, 48),
              ),
              onPressed: () {

              },
              child: Text('Follow', style: TextStyle(color:Colors.grey))
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              
              
              OutlinedButton(
                
                onPressed:(){
                
                },
                child: Text('Explore More', style: TextStyle(color: const Color.fromARGB(255, 29, 97, 31)))
              
              ),
            ],
          ),
        ],
        
      ),
      
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 25, 197, 31),
          foregroundColor: Colors.black,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.camera),
        ),
    );
  }
}
