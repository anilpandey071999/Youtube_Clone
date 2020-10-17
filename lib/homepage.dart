import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube/button.dart';
import 'package:youtube/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> children;
  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    children = [
      homePage(),
      Explore(),
      upload(),
      subscriptions(),
      Library()
    ];
  }

  void onTabTapped(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  Widget bottomAppBar (var selectedcolor){
    return BottomNavigationBar(
      fixedColor: selectedcolor,
      unselectedItemColor: selectedcolor,
      selectedFontSize: 12,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      currentIndex: tabIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            // ignore: deprecated_member_use
            title: Text("Home"),
            activeIcon: Icon(Icons.home),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            // ignore: deprecated_member_use
            title: Text("Explore"),
            activeIcon: Icon(Icons.explore),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp,
              size: 35,
            ),
            // ignore: deprecated_member_use
            title: Text(""),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            // ignore: deprecated_member_use
            title: Text("Subscription"),
            activeIcon: Icon(Icons.subscriptions_sharp),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            // ignore: deprecated_member_use
            title: Text("Library"),
            activeIcon: Icon(Icons.video_library),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color selectedcolor = Theme.of(context).accentColor;
    return Scaffold(
      appBar: MyAppBar(),
      body: children[tabIndex],
      bottomNavigationBar: bottomAppBar(selectedcolor),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          video('Python Beginners Project','images/assests_thumb1.png',"The Broken Coder • 1.4 lakh views • 1 day ago"),
          video('Dart For Beginners','images/assests_thumb2.png',"The Broken Coder • 4 lakh views • 10 day ago"),
          video('JavaScript Beginners Project','images/assests_thumb3.png',"The Broken Coder • 40 lakh views • 1 month ago"),
          video('Network Image Project','images/assests_thumb4.png',"The Broken Coder • 2 lakh views • 1 day ago"),
          // video('Python Beginners Project','images/assests_thumb1.png',"The Broken Coder • 1.4 lakh views • 1 day ago")
        ],
      ),
    );
  }
}

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: Row(
              children: [
                AnimatedButton(
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF771A26),
                            Color(0xFFBF3849),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Color(0xFFF4EFF0),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Trending',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: AnimatedButton(
                      Container(
                        height: 50,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF216761),
                              Color(0xFF45B2A8),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Music',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: Row(
              children: [
                AnimatedButton(
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF7E584F),
                            Color(0xFFC28575),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.games_outlined,
                                color: Color(0xFFF4EFF0),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Gaming',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: AnimatedButton(
                      Container(
                        height: 50,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF0B4378),
                              Color(0xFF1D62A1),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.fiber_new_sharp,
                                  color: Colors.white,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'News',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: Row(
              children: [
                AnimatedButton(
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF725c19),
                            Color(0xFFc29c10),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_movies_sharp,
                                color: Color(0xFFF4EFF0),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Films',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: AnimatedButton(
                      Container(
                        height: 50,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF3B3945),
                              Color(0xFF9B98AD),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.checkroom_outlined,
                                  color: Colors.white,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Fashion & bea..',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: Row(
              children: [
                AnimatedButton(
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF09573d),
                            Color(0xFF069383),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.lightbulb,
                                color: Color(0xFFF4EFF0),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Learning',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: AnimatedButton(
                      Container(
                        height: 50,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFbe4a0c),
                              Color(0xFFfc8b3d),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.live_tv,
                                  color: Colors.white,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Live',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.white,),
          SizedBox(height: 10,),
          video('Python Beginners Project','images/assests_thumb1.png',"The Broken Coder • 1.4 lakh views • 1 day ago"),
          video('Dart For Beginners','images/assests_thumb2.png',"The Broken Coder • 4 lakh views • 10 day ago"),
          video('JavaScript Beginners Project','images/assests_thumb3.png',"The Broken Coder • 40 lakh views • 1 month ago"),
          video('Network Image Project','images/assests_thumb4.png',"The Broken Coder • 2 lakh views • 1 day ago"),
        ],
      ),
    );
  }
}


class upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
          child: Container(child: Text("fsocuity")),
        )
    );
  }
}

class subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          video('Python Beginners Project','images/assests_thumb1.png',"The Broken Coder • 1.4 lakh views • 1 day ago"),
          video('Dart For Beginners','images/assests_thumb2.png',"The Broken Coder • 4 lakh views • 10 day ago"),
          video('JavaScript Beginners Project','images/assests_thumb3.png',"The Broken Coder • 40 lakh views • 1 month ago"),
          video('Network Image Project','images/assests_thumb4.png',"The Broken Coder • 2 lakh views • 1 day ago"),
          // video('Python Beginners Project','images/assests_thumb1.png',"The Broken Coder • 1.4 lakh views • 1 day ago")
        ],
      ),
    );
  }
}

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("coming soon"));
  }
}

