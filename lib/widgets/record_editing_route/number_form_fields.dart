import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class NumberFormField extends StatelessWidget {
  const NumberFormField(
      {super.key,
      required this.title,
      required this.data,
      required this.onSaved});
  final double data;
  final String title;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: data.toStringAsFixed(0),
        validator: (value) =>
            (value == null || value.isEmpty) ? "Fill the form field" : null,
        //    onChanged: onChanged
        /* (value) {
          try {
            data = double.parse(value);
          } catch (e) {
            data = 0;
          }
        } */
        onSaved: onSaved,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        minLines: 1,
        maxLines: 1,
        decoration:  InputDecoration(
          border: const OutlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }
}


