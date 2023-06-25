import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        // centerTitle: true,
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        // toolbarTextStyle: TextStyle(color: Colors.red),
        // titleTextStyle: TextStyle(color: Colors.green),
        // automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
          Text(_title),
        ],
      ),
      body: Column(children: []),
    );
  }
}

