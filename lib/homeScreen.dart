// //
// import 'package:booking_app/eventpage.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Events Near You'),
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
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
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Search bar
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search events',
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide.none,
//                     ),
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                   ),
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Text(
//                   'Categories',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 height: 50,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     CategoryChip(label: 'Music'),
//                     CategoryChip(label: 'Sports'),
//                     CategoryChip(label: 'Conferences'),
//                     CategoryChip(label: 'Comedy'),
//                     CategoryChip(label: 'Workshops'),
//                   ],
//                 ),
//               ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 16.0),
//                 child: Text(
//                   'MUSIC EVENTS',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     FeaturedEventCard(
//                       imageUrl: "images/app1.png",
//                       title: 'Music Fest 2024',
//                     ),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app2.png',
//                         title: 'Comedy Night Live'),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app3.png', title: 'Tech Conference'),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 16.0),
//                 child: Text(
//                   'COMEDY SHOWS',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     FeaturedEventCard(
//                       imageUrl: "images/app1.png",
//                       title: 'Music Fest 2024',
//                     ),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app2.png',
//                         title: 'Comedy Night Live'),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app3.png', title: 'Tech Conference'),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 16.0, vertical: 16.0),
//                 child: Text(
//                   'TECH EVENTS',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 height: 200,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     FeaturedEventCard(
//                       imageUrl: "images/app1.png",
//                       title: 'Music Fest 2024',
//                     ),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app2.png',
//                         title: 'Comedy Night Live'),
//                     FeaturedEventCard(
//                         imageUrl: 'images/app3.png', title: 'Tech Conference'),
//                   ],
//                 ),
//               ),

//               // Padding(
//               //   padding: const EdgeInsets.symmetric(
//               //       horizontal: 16.0, vertical: 16.0),
//               //   child: Text(
//               //     'Upcoming Events',
//               //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               //   ),
//               // ),
//               // EventListItem(
//               //   eventName: 'Hackathons',
//               //   date: 'Oct 20, 2024',
//               //   location: 'Pune, Maharashtra ',
//               // ),
//               // EventListItem(
//               //   eventName: 'Startup Expo',
//               //   date: 'Nov 10, 2024',
//               //   location: 'Pune, Maharashtra',
//               // ),
//               // EventListItem(
//               //   eventName: 'Food Carnival',
//               //   date: 'Dec 5, 2024',
//               //   location: 'Pune, Maharashtra',
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class EventListItem extends StatelessWidget {
//   final String eventName;
//   final String date;
//   final String location;

//   EventListItem(
//       {required this.eventName, required this.date, required this.location});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Card(
//         elevation: 3,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: ListTile(
//           title: Text(eventName, style: TextStyle(fontWeight: FontWeight.bold)),
//           subtitle: Text('$date • $location'),
//           trailing: Icon(Icons.arrow_forward_ios),
//           onTap: () {},
//         ),
//       ),
//     );
//   }
// }

// class FeaturedEventCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   FeaturedEventCard({required this.imageUrl, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => EventPage()),
//         );
//       },
//       child: Container(
//         width: 150,
//         margin: EdgeInsets.only(left: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 120,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                   image: AssetImage(imageUrl),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               title,
//               style:
//                   TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CategoryChip extends StatelessWidget {
//   final String label;

//   CategoryChip({required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 16.0),
//       child: Chip(
//         label: Text(label),
//         labelStyle: TextStyle(color: Colors.black),
//       ),
//     );
//   }
// }

// class EventDetailPage extends StatelessWidget {
//   final String title;
//   final String imageUrl;

//   EventDetailPage({required this.title, required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blueAccent, Colors.purpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 250,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(imageUrl),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   'Event details go here. You can include the event description, location, date, time, and other relevant information.',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:booking_app/eventpage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _searchQuery = '';
  String _selectedCategory = '';

  // Example event data
  final List<Map<String, String>> _events = [
    {
      'title': 'Music Fest 2024',
      'category': 'Music',
      'image': 'images/app1.png'
    },
    {
      'title': 'Comedy Night Live',
      'category': 'Comedy',
      'image': 'images/app2.png'
    },
    {
      'title': 'Tech Conference',
      'category': 'Tech',
      'image': 'images/app3.png'
    },
    {'title': 'Startup Expo', 'category': 'Tech', 'image': 'images/app3.png'},
    {
      'title': 'Food Carnival',
      'category': 'Comedy',
      'image': 'images/app2.png'
    },
  ];

  // Filtered event list
  List<Map<String, String>> get _filteredEvents {
    return _events.where((event) {
      final matchesCategory =
          _selectedCategory.isEmpty || event['category'] == _selectedCategory;
      final matchesSearch =
          event['title']!.toLowerCase().contains(_searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events Near You'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Search events',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),

              // Categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryChip(
                      label: 'All',
                      isSelected: _selectedCategory.isEmpty,
                      onTap: () {
                        setState(() {
                          _selectedCategory = '';
                        });
                      },
                    ),
                    CategoryChip(
                      label: 'Music',
                      isSelected: _selectedCategory == 'Music',
                      onTap: () {
                        setState(() {
                          _selectedCategory = 'Music';
                        });
                      },
                    ),
                    CategoryChip(
                      label: 'Comedy',
                      isSelected: _selectedCategory == 'Comedy',
                      onTap: () {
                        setState(() {
                          _selectedCategory = 'Comedy';
                        });
                      },
                    ),
                    CategoryChip(
                      label: 'Tech',
                      isSelected: _selectedCategory == 'Tech',
                      onTap: () {
                        setState(() {
                          _selectedCategory = 'Tech';
                        });
                      },
                    ),
                  ],
                ),
              ),

              // Filtered Events
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Text(
                  'Filtered Events',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filteredEvents.length,
                  itemBuilder: (context, index) {
                    final event = _filteredEvents[index];
                    return FeaturedEventCard(
                      imageUrl: event['image']!,
                      title: event['title']!,
                    );
                  },
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filteredEvents.length,
                  itemBuilder: (context, index) {
                    final event = _filteredEvents[index];
                    return FeaturedEventCard(
                      imageUrl: event['image']!,
                      title: event['title']!,
                    );
                  },
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _filteredEvents.length,
                  itemBuilder: (context, index) {
                    final event = _filteredEvents[index];
                    return FeaturedEventCard(
                      imageUrl: event['image']!,
                      title: event['title']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryChip({
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          label: Text(label),
          labelStyle: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
          backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
        ),
      ),
    );
  }
}

class FeaturedEventCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  FeaturedEventCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventPage()),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
