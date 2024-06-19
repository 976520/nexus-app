import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 300,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Container(color: Colors.amber,)),
                  Expanded(child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Center(child: Text('Your name', style: Theme.of(context).textTheme.titleLarge))
                  )),
                ],
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(Icons.person_outline, size: 75)
                ),
              )
            ],
          )
        ),
      ],
    );
  }
}
