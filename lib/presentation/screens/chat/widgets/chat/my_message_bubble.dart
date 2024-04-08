import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(20.0)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2864321330.
              child:
                  Text('Hello Mimicita', style: TextStyle(color: Colors.white)),
            )),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
