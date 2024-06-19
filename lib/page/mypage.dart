import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 230,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.white, Colors.amber],
                          stops: [0.0, 0.7]
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.person_outline, size: 75),
                    ),
                    Text(
                      '유지헌',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 0, right: 30, bottom: 30),
          child: Text(
            '(전) 자랑스러운 광주 소프트웨어 마이스터 고등학교 학생으로 1학년 1반 친구들의 리더입니다.',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Divider(height: 1, color: Colors.grey[300]),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('프로젝트', style: Theme.of(context).textTheme.labelSmall),
                    Text('6', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('팔로워', style: Theme.of(context).textTheme.labelSmall),
                    Text('14', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('팔로잉', style: Theme.of(context).textTheme.labelSmall),
                    Text('12', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
          child: Row(
            children: [
              Text('최근 활동', style: Theme.of(context).textTheme.titleMedium),
              Icon(Icons.history, color: Colors.grey[600])
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.history),
                title: Text('활동 $index'),
                subtitle: Text('활동 내용 $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}
