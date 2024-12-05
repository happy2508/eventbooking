// import 'package:booking_app/eventDetailPage.dart';
// import 'package:flutter/material.dart';

// class EventPage extends StatelessWidget {
//   // Sample list of events
//   final List<Map<String, String>> events = [
//     {
//       'title': 'Music Fest 2024',
//       'image': 'images/app1.png',
//       'date': 'Oct 20, 2024',
//       'location': 'Pune, Maharashtra',
//       'description': 'An unforgettable evening of live music performances.',
//     },
//     {
//       'title': 'Comedy Night Live',
//       'image': 'images/app2.png',
//       'date': 'Nov 5, 2024',
//       'location': 'Mumbai, Maharashtra',
//       'description': 'Get ready to laugh with top comedians.',
//     },
//     {
//       'title': 'Tech Conference ',
//       'image': 'images/app3.png',
//       'date': 'Dec 10, 2024',
//       'location': 'Bengaluru, Karnataka',
//       'description': 'The latest innovations in the tech world.',
//     },
//     {
//       'title': "India's got Latent",
//       'image': 'images/app4.png',
//       'date': 'Oct 20, 2024',
//       'location': 'Pune, Maharashtra',
//       'description': 'An unforgettable evening of live music performances.',
//     },
//     {
//       'title': 'Dil-luminati tour',
//       'image': 'images/app5.png',
//       'date': 'Oct 20, 2024',
//       'location': 'Pune, Maharashtra',
//       'description': 'An unforgettable evening of live music performances.',
//     },
//     {
//       'title': 'coldplay',
//       'image': 'images/app6.png',
//       'date': 'Oct 20, 2024',
//       'location': 'Pune, Maharashtra',
//       'description': 'An unforgettable evening of live music performances.',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upcoming Events'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blueAccent, Colors.purpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: GridView.builder(
//           padding: EdgeInsets.all(16.0),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16.0,
//             mainAxisSpacing: 26.0,
//           ),
//           itemCount: events.length,
//           itemBuilder: (context, index) {
//             final event = events[index];
//             return GestureDetector(
//                 onTap: () {
//                   // Navigate to EventDetailsPage, passing event details
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => EventDetailsPage(event: event),
//                     ),
//                   );
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         blurRadius: 5,
//                         offset: Offset(0, 3), // Shadow position
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius:
//                             BorderRadius.vertical(top: Radius.circular(10)),
//                         child: Image.asset(
//                           event['image']!,
//                           width: double.infinity,
//                           height: 100,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           event['title']!,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0),
//                         child: Text(
//                           event['date']!,
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ));
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'eventDetailPage.dart'; // Make sure to import the EventDetailsPage.

// class EventPage extends StatefulWidget {
//   @override
//   _EventPageState createState() => _EventPageState();
// }

// class _EventPageState extends State<EventPage> {
//   // Initial list of events
//   List<Map<String, String>> events = [
//     {
//       'title': 'Music Fest 2024',
//       'image': 'images/app1.png',
//       'date': 'Oct 20, 2024',
//       'location': 'Pune, Maharashtra',
//       'description': 'An unforgettable evening of live music performances.',
//     },
//     {
//       'title': 'Comedy Night Live',
//       'image': 'images/app2.png',
//       'date': 'Nov 5, 2024',
//       'location': 'Mumbai, Maharashtra',
//       'description': 'Get ready to laugh with top comedians.',
//     },
//   ];

//   // Method to add a new event
//   void addEvent() {
//     setState(() {
//       events.add({
//         'title': 'New Event',
//         'image': 'images/app2.png', // Ensure this image exists in assets.
//         'date': 'Dec 31, 2024',
//         'location': 'Delhi, India',
//         'description': 'Celebrate the new year with a bang!',
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upcoming Events'),
//         backgroundColor: Colors.blueAccent,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: addEvent, // Call addEvent when button is pressed
//           ),
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blueAccent, Colors.purpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: GridView.builder(
//           padding: EdgeInsets.all(16.0),
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16.0,
//             mainAxisSpacing: 26.0,
//           ),
//           itemCount: events.length,
//           itemBuilder: (context, index) {
//             final event = events[index];
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => EventDetailsPage(event: event),
//                   ),
//                 );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 5,
//                       offset: Offset(0, 3), // Shadow position
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(10)),
//                       child: Image.asset(
//                         event['image']!,
//                         width: double.infinity,
//                         height: 100,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         event['title']!,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         event['date']!,
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: addEvent, // Call addEvent when FAB is pressed
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blueAccent,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'eventDetailPage.dart'; // Ensure you import the EventDetailsPage.

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  // Initial list of events
  List<Map<String, String>> events = [
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
      'title': 'Tech Conference ',
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

  // Method to add a new event
  void showAddEventDialog() {
    // Controllers to collect user input
    final TextEditingController titleController = TextEditingController();
    final TextEditingController imageController = TextEditingController();
    final TextEditingController dateController = TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Event'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Event Title'),
                ),
                TextField(
                  controller: imageController,
                  decoration: InputDecoration(labelText: 'Image Path'),
                ),
                TextField(
                  controller: dateController,
                  decoration:
                      InputDecoration(labelText: 'Date (e.g., Dec 31, 2024)'),
                ),
                TextField(
                  controller: locationController,
                  decoration: InputDecoration(labelText: 'Location'),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add the new event to the list
                setState(() {
                  events.add({
                    'title': titleController.text,
                    'image': imageController.text, // Ensure the path is valid
                    'date': dateController.text,
                    'location': locationController.text,
                    'description': descriptionController.text,
                  });
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Add Event'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Events'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: showAddEventDialog, // Show dialog to add event
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
            mainAxisSpacing: 26.0,
          ),
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsPage(event: event),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        event['image']!,
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        event['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: showAddEventDialog, // Show dialog to add event
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
