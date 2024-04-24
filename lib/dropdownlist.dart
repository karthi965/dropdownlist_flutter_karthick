import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var _selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('DropDown')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              elevation: 22,
              value: _selectedArea,
              hint: Text('Select City'),
              items: <String>['Chennai', 'Kolkata', 'Mumbai', 'Delhi'].map(
                    (String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                },
              ).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedArea = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
