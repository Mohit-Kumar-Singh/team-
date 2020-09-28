import 'package:team/profileDetail.dart';
import 'package:flutter/material.dart';
import 'package:team/data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Profiledetails(
        name: Dummy_profile[4].name,
        skill: Dummy_profile[4].skill,
        profiephoto: Dummy_profile[4].profiephoto,
        linkedin: Dummy_profile[4].linkedin,
        instaurl: Dummy_profile[4].instaurl,
        mail: Dummy_profile[4].mail,
        phoneNo: Dummy_profile[4].phoneNo,
        bio: Dummy_profile[4].bio,
      ),
    );
  }
}
