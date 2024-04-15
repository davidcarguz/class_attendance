import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class UserHeader extends StatelessWidget {

  final String title;

  const UserHeader({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2.0,
              bottom: SizeConfig.blockSizeVertical * 1.0),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Icon(Icons.menu),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 20.0),
                    )),
              ),
              const Expanded(
                flex: 1,
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}