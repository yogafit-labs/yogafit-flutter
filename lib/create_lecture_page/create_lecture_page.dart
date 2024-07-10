import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateLecturePage extends StatefulWidget {
  const CreateLecturePage({super.key});

  @override
  CreateLecturePageState createState() => CreateLecturePageState();
}

class CreateLecturePageState extends State<CreateLecturePage> {
  final _formKey = GlobalKey<FormState>();
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (picked != null && picked != _time) {
      setState(() {
        _time = picked;
      });
    }
  }

  void _saveForm() {
    final isValid = _formKey.currentState?.validate();
    if (isValid != null && isValid) {
      // Save the lecture details
      // Navigate back or show a success message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Lecture'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _title = value ?? '';
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  // _description = value ?? '';
                },
              ),
              ListTile(
                title: Text('Date: ${DateFormat('yyyy-MM-dd').format(_date)}'),
                trailing: const Icon(Icons.calendar_today),
                onTap: _pickDate,
              ),
              ListTile(
                title: Text('Time: ${_time.format(context)}'),
                trailing: const Icon(Icons.access_time),
                onTap: _pickTime,
              ),
              ElevatedButton(
                onPressed: _saveForm,
                child: const Text('Save Lecture'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
