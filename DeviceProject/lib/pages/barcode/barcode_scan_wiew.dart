
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/padding_widgets.dart';
import '../devices/widgets/qr_scan_view.dart';
import 'widgets/qr_input_widget.dart';
import 'widgets/qr_widget.dart';

class BarcodeScanWiew extends StatelessWidget {
  const BarcodeScanWiew({super.key});

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
          onPressed: () {
            // Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            paddingVertical24(),
            qrWidget(screenWidth, 'Scan the QR code'),
            paddingVertical40(),
            inputWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [customButton(caption: "OKAY", onTap: () {})],
            ),
            paddingVertical40(),
          ],
        ),
      ),
    );
  }
}
