import 'package:flutter/material.dart';
import 'animelist.dart';
import 'addcard.dart';
import 'package:url_launcher/url_launcher.dart';

Color? br = Colors.brown[200];
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
  int i = 0;
}

int i = 0;

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  String? Feedback;
  _launchURL(String url) async {
    // const url = 'https://flutter.io';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<String> Match = [];
  List<String> anime = ['swimming', 'pingpong', 'football', 'Gym'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            // decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("images/a1.jpg"), fit: BoxFit.fill)),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new NetworkImage(
                        'https://i0.wp.com/oocentral.ca/wp-content/uploads/2018/01/kimi-no-na-wa-quotes.png?fit=1920%2C1080&ssl=1'),
                    fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(37, 15, 37, 5),
                  width: double.infinity,
                  color: Colors.grey[900],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text(
                        "About  me",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.transparent,
                          shadows: const [
                            Shadow(
                                color: Colors.blueGrey, offset: Offset(4, -2))
                          ],
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.0),
                          Column(
                            children: [
                              Image.asset(
                                'images/me.jpeg',
                                width: 350,
                                height: 400,
                                //height: 500,
                              ),
                              SizedBox(height: 10.0),
                            ],
                          ),
                          SizedBox(width: 30.0),
                          Column(
                            children: <Widget>[
                              SizedBox(height: 5),
                              Text(
                                "ASHISH KUMAR",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.transparent,

                                  shadows: [
                                    Shadow(
                                        color: Colors.blueGrey,
                                        offset: Offset(0, -8))
                                  ],
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.grey[800],
                                  //  decorationStyle: TextDecorationStyle.dashed,
                                ),
                              ),
                              SizedBox(height: 40),
                              DefaultTextStyle(
                                child: Container(
                                    width: 350,
                                    // color: Colors.white,
                                    child: Flexible(
                                      child: Text(
                                          "hi im ashish ,im an undergrade at IIT tirupati im doing my first animepolio"
                                          "  in which explain about all good anime's ,i liked and also i kinda show off my website skills"),

                                      //ll
                                    )),
                                style: TextStyle(
                                  color: Colors.brown[200],
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: (Text('scroll down')))
                            ],
                          )

                          // SizedBox(width: 20),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('contact me'),
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                              'https://www.linkedin.com/in/ashish-kumar-293624264/');
                        },
                        child: Image.asset(
                          "images/linkedin.png",
                          height: 70,
                          width: 70,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(height: 150),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Top Anime',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.all(32),
                //   child: ElevatedButton(
                //     child: Text('Linked in'),
                //     onPressed: () async{
                //
                //     },
                //   )
                // ),
                Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  height: 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'My favorite Anime',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  color: Colors.grey[900],
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'My Hobbies(click +)',
                        style: TextStyle(
                          color: Colors.yellow[300],
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  color: Colors.grey[900],
                  height: 270,
                  padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: anime
                          .map((e) => Animelist(
                              name: e,
                              add: () {
                                if (i < 4) {
                                  i = i + 1;
                                  setState(() {
                                    Match.add(e);
                                  });
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                        Text("cant add more than 4 hobbies"),
                                  ));
                                }
                              }))
                          .toList()),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey[900],
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'give your hobbies',
                        style: TextStyle(
                          color: Colors.yellow[300],
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey[900],
                  height: 200,
                  padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: Match.map((x) => Matchlist(
                          name: x,
                          delete: () {
                            i--;
                            setState(() {
                              Match.remove(x);
                            });
                          })).toList()),
                ),

                Container(
                  width: double.infinity,
                  height: 500,
                  //padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/a1.jpg"), fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "FeedBack",
                        style: TextStyle(fontSize: 45, color: Colors.black),
                      ),
                      Divider(),
                      RadioListTile(
                        title: Text(
                          "Excellent",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[800],
                          ),
                        ),
                        value: "eale",
                        groupValue: Feedback,
                        onChanged: (value) {
                          setState(() {
                            Feedback = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Good",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[800],
                          ),
                        ),
                        value: "male",
                        groupValue: Feedback,
                        onChanged: (value) {
                          setState(() {
                            Feedback = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Average",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]),
                        ),
                        value: "female",
                        groupValue: Feedback,
                        onChanged: (value) {
                          setState(() {
                            Feedback = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "poor",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]),
                        ),
                        value: "other",
                        groupValue: Feedback,
                        onChanged: (value) {
                          setState(() {
                            Feedback = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "worst",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]),
                        ),
                        value: "not",
                        groupValue: Feedback,
                        onChanged: (value) {
                          setState(() {
                            Feedback = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  color: Colors.grey[900],
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("your response recorded"),
                            ));
                            setState(() {
                              Match = [];
                              i = 0;
                            });
                          },
                          child: Text('submit')),
                    ],
                  ),
                ),

                SizedBox(height: 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
