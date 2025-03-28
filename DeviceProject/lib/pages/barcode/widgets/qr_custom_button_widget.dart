import 'package:flutter/material.dart';

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
