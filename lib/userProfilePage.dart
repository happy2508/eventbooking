import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                          'images/profile_pic.png'), // Replace with your image path
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 16),
                    // User Name
                    Text(
                      'harsh panwar',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    // User Bio
                    // Text(
                    //   'Event Enthusiast | Tech Geek | Music Lover',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     color: Colors.white70,
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileInfoTile(
                      icon: Icons.phone,
                      title: 'Phone Number',
                      subtitle: '+123 456 7890',
                    ),
                    Divider(),
                    ProfileInfoTile(
                      icon: Icons.email,
                      title: 'Email',
                      subtitle: '123@example.com',
                    ),
                    Divider(),
                    ProfileInfoTile(
                      icon: Icons.location_on,
                      title: 'Location',
                      subtitle: 'Pune, Maharashtra',
                    ),
                    Divider(),
                    ProfileInfoTile(
                      icon: Icons.calendar_today,
                      title: 'Upcoming Events',
                      subtitle: '3 Bookings',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  ProfileInfoTile(
      {required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }
}
