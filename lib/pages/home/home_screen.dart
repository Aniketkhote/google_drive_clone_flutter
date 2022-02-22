import 'package:flutter/material.dart';
import 'package:quickly/quickly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: FxColor.dark,
        elevation: 0,
        title: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search ...',
          ),
        ),
        actions: [
          const CircleAvatar(
            radius: 17,
            backgroundColor: FxColor.gray700,
            child: Icon(Icons.person),
          ).pr(20),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Google Drive').xl3.p12,
              const Divider(color: FxColor.gray500),
              ListTile(
                horizontalTitleGap: 0,
                leading: const Icon(Icons.history),
                title: const Text('Recent'),
                onTap: () {},
              )
            ],
          ),
        ),
      ).wBox(250),
    );
  }
}
