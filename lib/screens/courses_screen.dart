import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class CoursesScreen extends StatelessWidget {
  static const route = 'courses';

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2.0,
              bottom: SizeConfig.blockSizeVertical * 1.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.menu),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                        child: Text(
                      'Courses',
                      style: TextStyle(fontSize: 20.0),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
