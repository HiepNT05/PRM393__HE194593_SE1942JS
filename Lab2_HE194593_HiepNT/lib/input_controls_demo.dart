import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  // Giá trị của Slider
  double rating = 50;

  // Trạng thái của Switch
  bool isActive = false;

  // Giá trị của RadioListTile
  String? selectedGenre;

  // Ngày được chọn
  DateTime? selectedDate;

  // Hàm mở DatePicker
  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 2 - Input Controls'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Slider
            const Text(
              'Rating (Slider)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Slider(
              value: rating,
              min: 0,
              max: 100,
              divisions: 100,
              label: rating.round().toString(),
              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),

            Text(
              'Current value: ${rating.round()}',
            ),

            const SizedBox(height: 20),

            // Switch
            const Text(
              'Active (Switch)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Is movie active?'),
              value: isActive,
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            ),

            Text(
              'Status: ${isActive ? "Active" : "Inactive"}',
            ),

            const SizedBox(height: 20),

            // RadioListTile
            const Text(
              'Genre (RadioListTile)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile<String>(
              title: const Text('Action'),
              value: 'Action',
              groupValue: selectedGenre,
              onChanged: (value) {
                setState(() {
                  selectedGenre = value;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text('Comedy'),
              value: 'Comedy',
              groupValue: selectedGenre,
              onChanged: (value) {
                setState(() {
                  selectedGenre = value;
                });
              },
            ),

            Text(
              'Selected genre: ${selectedGenre ?? "None"}',
            ),

            const SizedBox(height: 20),

            // DatePicker Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _selectDate,
                child: const Text('Open Date Picker'),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              selectedDate == null
                  ? 'Selected date: None'
                  : 'Selected date: '
                  '${selectedDate!.day}/'
                  '${selectedDate!.month}/'
                  '${selectedDate!.year}',
            ),
          ],
        ),
      ),
    );
  }
}