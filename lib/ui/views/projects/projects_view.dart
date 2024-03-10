import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/projects/widgets/projects_list.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'APPS',
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 55,
            fontWeight: FontWeight.bold,
          ),
        ),
        ProjectsWidget(),
      ],
    );
  }
}
