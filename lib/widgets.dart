import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    var brightness =  MediaQuery.of(context).platformBrightness;
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: (brightness == Brightness.dark)?Image.network(
        'https://raw.githubusercontent.com/anilpandey071999/Youtube_Clone/main/images/yt_logo_rgb_dark.png',
        fit: BoxFit.cover,
        width: 100.0,
      ):Image.network('https://raw.githubusercontent.com/anilpandey071999/Youtube_Clone/main/images/youtube_logo.png',fit: BoxFit.cover,
        width: 100.0,
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Screen Cast button'),
                    duration: Duration(seconds: 6),
                    backgroundColor: Colors.redAccent,
                    behavior: SnackBarBehavior.floating,
                  ));
                },
                child: Icon(
                  Icons.cast_sharp,
                  color: Theme.of(context).accentColor,
                ))),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('In App Notification'),
                duration: Duration(seconds: 6),
                backgroundColor: Colors.deepPurple,
                behavior: SnackBarBehavior.floating,
              ));
            },
            child: Icon(Icons.notifications_none_sharp,color: Theme.of(context).accentColor,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Search'),
                duration: Duration(seconds: 6),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ));
            },
            child: Icon(Icons.search,color: Theme.of(context).accentColor,),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
              onTap: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Your account settings'),
                  duration: Duration(seconds: 6),
                  backgroundColor: Colors.indigoAccent,
                  behavior: SnackBarBehavior.floating,
                ));
              },
              child: Icon(Icons.account_circle_outlined,color: Theme.of(context).accentColor,)),
        )
      ],
    );
  }
}

class video extends StatelessWidget {
  String title,image,subtitle;
  video(this.title, this.image, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 225,
            // color: Colors.indigoAccent,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('$image'),
                    fit: BoxFit.fill
                )
            ),
          ),
          Container(
            height: 70,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: ListTile(
              leading: CircleAvatar(
                child: Text("a",style:TextStyle(fontSize: 30),),
              ),
              title: Text("$title",textAlign: TextAlign.start,style: TextStyle(color: Theme.of(context).accentColor,fontWeight: FontWeight.bold),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text("$subtitle",style: TextStyle(color: Theme.of(context).accentColor,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class History extends StatelessWidget {
  String title,image,subtitle;
  History(this.title, this.image, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            // color: Colors.indigoAccent,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('$image'),
                    fit: BoxFit.fill
                )
            ),
          ),
          Container(
            height: 50,
            width: 140,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: ListTile(
              title: Text("$title",style: TextStyle(color: Theme.of(context).accentColor),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Text("$subtitle",style: TextStyle(color: Theme.of(context).accentColor,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
