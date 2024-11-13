import 'package:booking_app/eventDetailPage.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  // Sample list of events
  final List<Map<String, String>> events = [
    {
      'title': 'Music Fest 2024',
      'image': 'images/app1.png',
      'date': 'Oct 20, 2024',
      'location': 'Pune, Maharashtra',
      'description': 'An unforgettable evening of live music performances.',
    },
    {
      'title': 'Comedy Night Live',
      'image': 'images/app2.png',
      'date': 'Nov 5, 2024',
      'location': 'Mumbai, Maharashtra',
      'description': 'Get ready to laugh with top comedians.',
    },
    {
      'title': 'Tech Conference 2024',
      'image': 'images/app3.png',
      'date': 'Dec 10, 2024',
      'location': 'Bengaluru, Karnataka',
      'description': 'The latest innovations in the tech world.',
    },
    {
      'title': "India's got Latent",
      'image': 'images/app4.png',
      'date': 'Oct 20, 2024',
      'location': 'Pune, Maharashtra',
      'description': 'An unforgettable evening of live music performances.',
    },
    {
      'title': 'Dil-luminati tour',
      'image': 'images/app5.png',
      'date': 'Oct 20, 2024',
      'location': 'Pune, Maharashtra',
      'description': 'An unforgettable evening of live music performances.',
    },
    {
      'title': 'coldplay',
      'image': 'images/app6.png',
      'date': 'Oct 20, 2024',
      'location': 'Pune, Maharashtra',
      'description': 'An unforgettable evening of live music performances.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Events'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return GestureDetector(
              onTap: () {
                // Navigate to EventDetailsPage, passing event details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsPage(event: event),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      event['image']!,
                      width: double.infinity,
                      height: 110,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        event['title']!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        event['date']!,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
