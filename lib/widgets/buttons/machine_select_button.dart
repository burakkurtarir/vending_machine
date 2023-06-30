import 'package:flutter/material.dart';

class MachineSelectButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const MachineSelectButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
