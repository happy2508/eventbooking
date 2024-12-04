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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Events'),
        backgroundColor: Colors.blueAccent,
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
                  // Navigate to EventDetailsPage, passing event details
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
                ));
          },
        ),
      ),
    );
  }
}

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// import 'eventDetailPage.dart';

// class EventPage extends StatefulWidget {
//   @override
//   _EventPageState createState() => _EventPageState();
// }

// class _EventPageState extends State<EventPage> {
//   List<Map<String, dynamic>> events = [
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
//       'title': 'Tech Conference',
//       'image': 'images/app3.png',
//       'date': 'Dec 10, 2024',
//       'location': 'Bengaluru, Karnataka',
//       'description': 'The latest innovations in the tech world.',
//     },
//   ];

//   final ImagePicker _picker = ImagePicker();

//   Future<void> _addNewEvent() async {
//     String? title;
//     String? date;
//     String? location;
//     String? description;
//     File? imageFile;

//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add New Event'),
//           content: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Title'),
//                   onChanged: (value) {
//                     title = value;
//                   },
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Date'),
//                   onChanged: (value) {
//                     date = value;
//                   },
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Location'),
//                   onChanged: (value) {
//                     location = value;
//                   },
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: 'Description'),
//                   onChanged: (value) {
//                     description = value;
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () async {
//                     final XFile? pickedImage =
//                         await _picker.pickImage(source: ImageSource.gallery);
//                     if (pickedImage != null) {
//                       setState(() {
//                         imageFile = File(pickedImage.path);
//                       });
//                     }
//                   },
//                   child: Text('Select Image'),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (title != null &&
//                     date != null &&
//                     location != null &&
//                     description != null &&
//                     imageFile != null) {
//                   setState(() {
//                     events.add({
//                       'title': title!,
//                       'image': imageFile!.path,
//                       'date': date!,
//                       'location': location!,
//                       'description': description!,
//                     });
//                   });
//                   Navigator.pop(context);
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Please fill all fields.')),
//                   );
//                 }
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upcoming Events'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Container(
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
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) => EventDetailsPage(event: event),
//                 //   ),
//                 // );
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 5,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(10)),
//                       child: event['image'].toString().startsWith('images')
//                           ? Image.asset(
//                               event['image'],
//                               width: double.infinity,
//                               height: 100,
//                               fit: BoxFit.cover,
//                             )
//                           : Image.file(
//                               File(event['image']),
//                               width: double.infinity,
//                               height: 100,
//                               fit: BoxFit.cover,
//                             ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         event['title'],
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         event['date'],
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
//         onPressed: _addNewEvent,
//         child: Icon(Icons.add),
//         backgroundColor: Colors.blueAccent,
//       ),
//     );
//   }
// }
