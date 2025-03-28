import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/configuration.dart';
import '../../widgets/padding_widgets.dart';
import 'devices_controller.dart';
import 'widgets/device_image_list_widget.dart';
import 'widgets/header_widget.dart';

class DevicesView extends StatefulWidget {
  const DevicesView({super.key});

  @override
  DevicesViewState createState() => DevicesViewState();
}

class DevicesViewState extends State<DevicesView> {
  @override
  Widget build(BuildContext context) {
    DevicesControloler controller = Get.put(DevicesControloler());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: grey,
        leading: const Icon(CupertinoIcons.left_chevron),
        title: const Text('Devices'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.4,
            child: header(controller),
          ),
          paddingVertical24(),
          Text("DEVICE LIST", style: TextStyle(fontSize: 20)),
          paddingVertical24(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Obx(() {
                    return deviceImageList(controller);
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
