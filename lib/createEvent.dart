import 'package:flutter/material.dart';
import 'event_model.dart';

class ManageEventsPage extends StatefulWidget {
  @override
  _ManageEventsPageState createState() => _ManageEventsPageState();
}

class _ManageEventsPageState extends State<ManageEventsPage> {
  List<Event> _events = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _addEvent() {
    setState(() {
      _events.add(Event(
        title: _titleController.text,
        description: _descriptionController.text,
        date: _selectedDate,
      ));
      _titleController.clear();
      _descriptionController.clear();
    });
  }

  void _updateEvent(int index) {
    setState(() {
      _events[index] = Event(
        title: _titleController.text,
        description: _descriptionController.text,
        date: _selectedDate,
      );
      _titleController.clear();
      _descriptionController.clear();
    });
  }

  // Function to delete an event
  void _deleteEvent(int index) {
    setState(() {
      _events.removeAt(index);
    });
  }

  void _showEventDialog({int? index}) {
    if (index != null) {
      // If updating, prefill the fields
      _titleController.text = _events[index].title;
      _descriptionController.text = _events[index].description;
      _selectedDate = _events[index].date;
    } else {
      _titleController.clear();
      _descriptionController.clear();
      _selectedDate = DateTime.now();
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(index == null ? 'Add Event' : 'Update Event'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () => _pickDate(context),
              child:
                  Text('Select Date: ${_selectedDate.toLocal()}'.split(' ')[0]),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (index == null) {
                _addEvent(); // Add new event
              } else {
                _updateEvent(index); // Update existing event
              }
              Navigator.pop(context);
            },
            child: Text(index == null ? 'Add' : 'Update'),
          ),
        ],
      ),
    );
  }

  // Function to pick a date
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Events'),
      ),
      body: ListView.builder(
        itemCount: _events.length,
        itemBuilder: (context, index) {
          final event = _events[index];
          return ListTile(
            title: Text(event.title),
            subtitle: Text('${event.description}\nDate: ${event.date.toLocal()}'
                .split(' ')[0]),
            isThreeLine: true,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _showEventDialog(index: index), // Edit event
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteEvent(index), // Delete event
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showEventDialog(), // Add new event
        child: Icon(Icons.add),
      ),
    );
  }
}
