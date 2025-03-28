import 'package:deneme/widgets/padding_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QrScanView extends StatelessWidget {
  const QrScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevicesView();
  }
}

class DevicesView extends StatelessWidget {
  const DevicesView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;

    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE3F2FD),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            qrWidget(screenWidth, 'Scan the QR code'),
            inputWidget(),
            paddingVertical24(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [customButton(caption: "OKAY", onTap: () {})],
            ),
          ],
        ),
      ),
    );
  }

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
}

Widget customButton({
  required String caption,
  required void Function() onTap,
  Color? color,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: color ?? Colors.lightBlueAccent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Text(caption, style: const TextStyle(color: Colors.white)),
    ),
  );
}
