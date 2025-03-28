import 'package:flutter/cupertino.dart';

import '../../../widgets/custom_icon_widget.dart';
import '../devices_controller.dart';
import 'device_image_widget.dart';

 Widget deviceImageList(DevicesControloler controller) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            customIcon(CupertinoIcons.add),
            Padding(padding: const EdgeInsets.all(12.0)),
            ...controller.devices.map((device) {
              return deviceImage(
                imagePath: device['image']!,
                title: device['title']!,
              );
            }),
          ],
        ),
      ),
    );
  }