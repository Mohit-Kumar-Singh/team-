import 'package:team/card.dart';
import 'package:team/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../data.dart';
import 'package:team/data.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 24, 18, 18),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: b, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: b, width: 2),
                      ),
                      labelText: 'Search',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .53,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Card1(
                          name: Dummy_profile[index].name,
                          skill: Dummy_profile[index].skill,
                          profiephoto: Dummy_profile[index].profiephoto,
                          linkedin: Dummy_profile[index].linkedin,
                          instaurl: Dummy_profile[index].instaurl,
                          mail: Dummy_profile[index].mail,
                          phoneNo: Dummy_profile[index].phoneNo,
                          bio: Dummy_profile[index].bio,
                        );
                      },
                      itemCount: Dummy_profile.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
