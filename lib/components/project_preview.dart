import 'package:flutter/material.dart';

class Project {
  final String name;
  final String description;
  final int stars;

  Project({
    required this.name,
    required this.description,
    required this.stars,
  });
}

class ProjectPreview extends StatelessWidget {
  final Project project;
  const ProjectPreview({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: size.width * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(
              project.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              project.description,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  Text(project.stars.toString()),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      )
    );
  }
}