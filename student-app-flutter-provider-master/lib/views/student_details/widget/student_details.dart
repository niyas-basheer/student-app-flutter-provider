import 'package:flutter/material.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black54),
                  overflow: TextOverflow.ellipsis)),
          Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.headlineMedium,
                overflow: TextOverflow.ellipsis,
              )),
        ],
      ),
    );
  }
}