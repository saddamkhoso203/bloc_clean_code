import 'package:bloc_clean_coding/config/color/colors.dart';
import 'package:flutter/material.dart';

class InternetExpections extends StatelessWidget {
  final VoidCallback onPress;
  const InternetExpections({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
        ),
        const Icon(
          Icons.cloud_off,
          color: AppColors.RedColor,
          size: 50,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'We have unable to show results.\n please check your data\nconnection',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 20),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.10,
        ),
        ElevatedButton(
            onPressed: onPress,
            child: Text(
              'RETRY',
              style: Theme.of(context).textTheme.bodySmall,
            ))
      ],
    );
  }
}
