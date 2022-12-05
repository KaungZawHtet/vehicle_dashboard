import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class DateTimeFormField extends StatefulWidget {
  const DateTimeFormField(
      {super.key,
      required this.title,
      required this.data,
      required this.onSaved});
  final DateTime data;
  final String title;
  final void Function(String?)? onSaved;

  @override
  State<DateTimeFormField> createState() => _DateTimeFormFieldState();
}

class _DateTimeFormFieldState extends State<DateTimeFormField> {
//  DateTime? _selectedDate;
  late TextEditingController dateTimeInput = TextEditingController();

  @override
  void initState() {
    super.initState();
  //  _selectedDate = widget.data;
    dateTimeInput = TextEditingController();
    dateTimeInput.text = DateFormat('yyyy-MM-dd HH:mm').format(widget.data) ;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: dateTimeInput,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.title,
        ),
        onSaved: widget.onSaved,
        readOnly: true,
        onTap: () async {
          DateTime? date = await DatePicker.showDateTimePicker(context,
              showTitleActions: true,
              currentTime: widget.data,
              minTime: DateTime(2010, 5, 5, 20, 50),
              maxTime: DateTime(2030, 6, 7, 05, 09));
          if (date != null) {
            setState(() {

              dateTimeInput.text = DateFormat('yyyy-MM-dd HH:mm').format(date);
              //_selectedDate = date;
            });
          }
        },
      ),
    );
  }
}
