import 'package:flutter/material.dart';

import '../../components/widgets.dart';
import '../../data/repository/CategoryRepository.dart';
import '../../models/profileSection.dart';
import 'components/body.dart';
import 'components/section_app_bar.dart';

class ProfileSectionScreen extends StatefulWidget {
  const ProfileSectionScreen({Key? key, required this.section})
      : super(key: key);

  final ProfileSection section;

  @override
  State<StatefulWidget> createState() => _ProfileSectionScreenState();
}

class _ProfileSectionScreenState extends State<ProfileSectionScreen> {
  List categories = [];

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void _loadData() async {
    getCategories().then((items) {
      setState(() {
        categories = items;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarContainer(
            size: 85,
            child: sectionAppBar(context, widget.section.name),
            context: context),
        backgroundColor: Colors.white,
        body: Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: SectionBody(
              categories: categories,
            )));
  }
}
