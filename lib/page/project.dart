import 'package:flutter/material.dart';
import 'package:nexus/components/project_preview.dart';
import 'package:nexus/util/gap.dart';
import 'package:nexus/util/interjector.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: interjector(
          [
            ProjectPreview(
                project: Project(
              name: 'Project Name',
              description: 'Project Description',
              stars: 100,
            )),
            ProjectPreview(
                project: Project(
              name: 'Project Name',
              description: 'Project Description',
              stars: 100,
            )),
            ProjectPreview(
                project: Project(
              name: 'Project Name',
              description: 'Project Description',
              stars: 100,
            )),
            ProjectPreview(
                project: Project(
              name: 'Project Name',
              description: 'Project Description',
              stars: 100,
            )),
          ],
          const Gap(20),
        ),
      ),
    );
  }
}
