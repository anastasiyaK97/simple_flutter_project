import 'package:flutter/material.dart';

import '../../components/widgets.dart';
import '../../data/repository/ProfileRepository.dart';
import 'components/body.dart';
import 'components/profile_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List sections = [];

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void _loadData() async {
    getSections().then((items) {
      setState(() {
        sections = items;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarContainer(
        size: 52,
        child: profileAppBar(context, widget.title),
      ),
      backgroundColor: Colors.white,
      body: ProfileBody(sections: sections),
    );
  }
}
