import 'package:app/screens/call_screen.dart';
import 'package:app/screens/ai_chat_screen.dart';
import 'package:app/screens/chat_screen.dart';
import 'package:app/screens/status_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        
      actions: [
         Padding(
            padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.camera, color: Colors.white, size: 20,),
            
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
       Card(
          margin: EdgeInsets.all(15),
    
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black,
                hintStyle: TextStyle(color: Colors.white),
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
         SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    _filterChip("All"),
    _filterChip("Unread"),
    _filterChip("Read"),
    _filterChip("Groups"),
    _filterChip("Archived"),
        ],
      ),
    ),
    SizedBox(height:15),
    ListTile(
  title: Text('Murtaza'),
  subtitle: Text('khn ho'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Murtaza',
          userImage: 'https://images.pexels.com/photos/31023938/pexels-photo-31023938.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/31023938/pexels-photo-31023938.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

      ListTile(
  title: Text('Razi'),
  subtitle: Text('chai pilo'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Razi',
          userImage: 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Osama'),
  subtitle: Text('bro'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Osama',
          userImage: 'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Wasay'),
  subtitle: Text('bike kidhr hai meri'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Wasay',
          userImage: 'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Ahsan'),
  subtitle: Text('kam ka kiya ho'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Ahsan',
          userImage: 'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Shahbaz'),
  subtitle: Text('aja bhr hun'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Shahbaz',
          userImage: 'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Ali'),
  subtitle: Text('yr bhr chalein'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Ali',
          userImage: 'https://images.pexels.com/photos/3785186/pexels-photo-3785186.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/3785186/pexels-photo-3785186.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Nasit'),
  subtitle: Text('time dekho'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Nasit',
          userImage: 'https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Mazz'),
  subtitle: Text('office aou'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Mazz',
          userImage: 'https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

ListTile(
  title: Text('Ibrahim'),
  subtitle: Text('yhn ajoa'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatScreen(
          userName: 'Ibrahim',
          userImage: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
        ),
      ),
    );
  },
  leading: CircleAvatar(
    backgroundImage: NetworkImage('https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg'),
  ),
  trailing: Icon(Icons.chat),
),

         ],
      ),
       floatingActionButton: FloatingActionButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AiChatScreen()),
    );
  },
  child: Icon(Icons.smart_toy), // 🤖 icon
  backgroundColor: Colors.pinkAccent,
),

    );
  }

  Widget _filterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
