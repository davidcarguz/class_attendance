import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BasicInformation extends StatelessWidget {

  final String label;
  final String data;

  const BasicInformation({
    super.key, required this.label, required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text: TextSpan(
        style: basicInformationContentStyle,
        children: [
          TextSpan(
            text: '$label: ',
            style: basicInformationLabelStyle,
          ),
          TextSpan(text: data),
        ],
      ),
    );
  }
}