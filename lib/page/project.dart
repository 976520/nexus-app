import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nexus/components/project_preview.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final List<int> _items =
      List<int>.generate(10, (index) => Random(index).nextInt(100));
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          _items.addAll(
              List<int>.generate(10, (index) => Random(index).nextInt(100)));
        });
      }
    });
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 40,
        right: 40,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ProjectPreview(
            project: Project(
              name: 'Project $index',
              description:
                  'This is a project description asdsadasdadddadsaddsdaasdasdadsadsadasasdsadadadadad',
              stars: _items[index],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 30,
        ),
        itemCount: _items.length,
        controller: scrollController,
      ),
    );
  }
}
