import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search, color: Colors.white, size: 20),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('Pricavy')),
              PopupMenuItem(child: Text('Settings')),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Recents')),
          SizedBox(height: 15),
          ListTile(
            title: Text('Murtaza'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/31023938/pexels-photo-31023938.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Razi'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Osama'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Wasay'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Ahsan'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Shahbaz'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Ali'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/3785186/pexels-photo-3785186.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Nasit'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/219550/pexels-photo-219550.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Mazz'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            title: Text('Ibrahim'),
            subtitle: Text(
              ' ⬈ Missed call • Yesterday, 7:10 PM ',
              style: TextStyle(color: const Color.fromARGB(255, 201, 199, 199)),
            ),
          
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
              ),
            ),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
