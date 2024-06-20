import 'package:flutter/material.dart';
import 'package:nexus/util/gap.dart';

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  project.description,
                  style: Theme.of(context).textTheme.labelSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Gap(20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(project.stars.toString()),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
