import 'package:flutter/material.dart';

import '../../../widgets/padding_widgets.dart';


 Widget qrWidget(double screenWidth, String title) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        paddingVertical24(),
        Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.7,
              height: 3,
              color: const Color(0xFFFFAB91),
            ),
          ],
        ),
      ],
    );
  }
