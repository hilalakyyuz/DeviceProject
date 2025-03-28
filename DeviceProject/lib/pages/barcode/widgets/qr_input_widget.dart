import 'package:flutter/material.dart';

 Widget inputWidget() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter barcode here',
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
