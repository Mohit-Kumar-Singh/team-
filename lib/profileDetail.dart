import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profiledetails extends StatelessWidget {
  final Color o = Color.fromRGBO(255, 181, 101, 1);
  final Color b = Color.fromRGBO(31, 16, 22, 1);
  final String name;
  final String profiephoto;
  final String instaurl;
  final String mail;
  final String linkedin;
  final int phoneNo;
  final String skill;
  final String bio;

  Profiledetails({
    @required this.name,
    @required this.profiephoto,
    @required this.instaurl,
    @required this.mail,
    @required this.linkedin,
    @required this.phoneNo,
    @required this.bio,
    @required this.skill,
  });

  void _launchUrlLin(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchUrlinsta(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchCall(int no) async {
    var url = 'tel:${no.toString()}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make call ';
    }
  }

  void _launchEmail(String email) async {
    var url = 'mailto:$email?subject= Conatus';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make email ';
    }
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              if (height < 595)
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.adamina(
                                color: Theme.of(context).primaryColor,
                                fontSize: 18),
                          ),
                          Text(skill,
                              style: GoogleFonts.montserratAlternates()),
                        ],
                      ),
                    ),
                    Spacer(),
                    circleAvatar(image: profiephoto, radius: 50),
                  ],
                ),
              if (height > 595)
                Column(
                  children: [
                    circleAvatar(image: profiephoto, radius: 50),
                    Text(
                      name,
                      style: GoogleFonts.adamina(
                          color: Theme.of(context).primaryColor, fontSize: 20),
                    ),
                    Text(skill, style: GoogleFonts.montserratAlternates()),
                  ],
                ),
              Divider(
                color: Colors.amber,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              SingleChildScrollView(
                child: Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Spacer(),
              Divider(
                color: Theme.of(context).accentColor,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text('Contact',
                    style: GoogleFonts.montserratAlternates(
                      color: b,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () => _launchUrlinsta(instaurl),
                      icon: Icon(
                        MdiIcons.instagram,
                      )),
                  IconButton(
                    onPressed: () => _launchCall(phoneNo),
                    icon: Icon(
                      Icons.call,
                    ),
                  ),
                  IconButton(
                      onPressed: () => _launchUrlLin(linkedin),
                      icon: Icon(
                        MdiIcons.linkedin,
                      )),
                  IconButton(
                    onPressed: () => _launchEmail(mail),
                    icon: Icon(
                      Icons.mail,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
