import 'package:flutter/material.dart';

class TSectionDetail extends StatelessWidget {
  const TSectionDetail({
    super.key,
    required this.title,
  });

 
  final String title;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!,  
            maxLines: 3,
            overflow: TextOverflow.ellipsis),
      ],
    );
  }
}