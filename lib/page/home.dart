import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Stack(
              children: [
                Transform.translate(
                  offset: const Offset(-65, 0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 200,
                    ),
                    child: Transform.translate(
                      offset: const Offset(120, 60),
                      child: const Icon(
                        Icons.circle,
                        color: Color(0xffFFF5DB),
                        size: 150,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-105, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffF4F9FF),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: const Offset(120, -25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Transform.translate(
                                    offset: const Offset(20, 5),
                                    child: const Text(
                                      'Search',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(
                                      10,
                                      15,
                                    ),
                                    child: const SearchBar(
                                      trailing: [
                                        Icon(Icons.search),
                                      ],
                                      constraints: BoxConstraints(
                                        maxHeight: 50,
                                        maxWidth: 250,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xffF4F9FF),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Transform.translate(
                    offset: const Offset(10, 10),
                    child: const Text(
                      "Best Project",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 160),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        width: 150,
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Project",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SvgPicture.asset(
                              'asset/image/DoingProject.svg',
                              colorFilter: const ColorFilter.mode(
                                Colors.green,
                                BlendMode.clear,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        height: 200,
                        width: 150,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Project",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        height: 200,
                        width: 150,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Project",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
