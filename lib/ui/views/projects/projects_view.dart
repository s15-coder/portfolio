import 'package:estebancoder/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/projects/widgets/projects_list.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'APPS',
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobileWidth ? 34 : 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: isMobileWidth ? UILayout.xlarge : UILayout.xxlarge),
        const ProjectsWidget(),
      ],
    );
  }
}
