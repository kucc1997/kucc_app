import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kucc_app/views/components/app_bar.dart';
import 'package:kucc_app/views/pages/event_detail/event_page.dart';
import 'package:kucc_app/views/pages/routine/routine.dart';

class Home extends HookWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
            height: 600,
            width: 500,
          ),
          KUCCAppBar(),
          EventPage(
              category: 'Flutter',
              time: '22/03/2081',
              workshopName: 'Flutter Workshop',
              room: '203',
              PeopleNo: '88'),
        ],
      ),
    );
  }
}
