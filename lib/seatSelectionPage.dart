import 'package:booking_app/paymentPage.dart';
import 'package:flutter/material.dart';

class SeatSelectionPage extends StatefulWidget {
  final Map<String, String> event;

  SeatSelectionPage({required this.event});

  @override
  _SeatSelectionPageState createState() => _SeatSelectionPageState();
}

class _SeatSelectionPageState extends State<SeatSelectionPage> {
  List<bool> selectedSeats = List.generate(50, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Seats'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select your seats for ${widget.event['title']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 50,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSeats[index] = !selectedSeats[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedSeats[index]
                          ? Colors.green
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.grey[600]!,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (selectedSeats.contains(true)) {
                // Navigate to dummy payment page after seat selection
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please select at least one seat.')),
                );
              }
            },
            child: Text('Confirm Booking'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
