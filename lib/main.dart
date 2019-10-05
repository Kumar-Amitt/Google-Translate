import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Text g = Text(
    'Google',
    style: TextStyle(fontFamily: 'Serif', fontWeight: FontWeight.bold),
  );
  Text t = Text('Translate');

  Icon star = Icon(
    Icons.star_border,
    color: Colors.white,
  );
  int a = 1;

  void yellowStar() {
    setState(() {
      star = a % 2 == 0
          ? Icon(Icons.star_border, color: Colors.white)
          : Icon(
        Icons.star,
        color: Colors.yellow,
      );
      a++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => {},
          ),
          title: Row(
            children: <Widget>[
              g,
              Text(' '),
              t,
            ],
          ),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'English',
                                style: TextStyle(
                                    color: Colors.blue.shade700, fontSize: 20),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue.shade700,
                                ),
                                onPressed: () => {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.swap_horiz,
                                color: Colors.blue.shade700),
                            onPressed: () => {},
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text('Indonesian',
                                  style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontSize: 20)),
                              IconButton(
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.blue.shade700),
                                onPressed: () => {},
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.volume_up,
                                    color: Colors.black,
                                  ),
                                  onPressed: () => {},
                                ),
                                Text('ENGLISH'),
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                color: Colors.black,
                              ),
                              onPressed: () => {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 2, bottom: 24, left: 16),
                          child: Text(
                            'good morning',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.camera_alt,
                                      color: Colors.indigo,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  Text('Camera'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.indigo,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  Text('Handwriting'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.mic_none,
                                      color: Colors.indigo,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  Text('Conversation'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.mic,
                                      color: Colors.indigo,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  Text('Voice'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Card(
                    color: Colors.blue.shade700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(
                                        Icons.volume_up,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      onPressed: () => {},
                                    ),
                                    Text(
                                      'INDONESIAN',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: star,
                                onPressed: yellowStar,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 2, bottom: 16),
                            child: Text(
                              'Selamat pagi',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.content_copy,
                                  color: Colors.white,
                                ),
                                onPressed: () => {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                                onPressed: () => {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Text('DEFINITIONS'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: Text(
                          'exclamation',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, bottom: 8),
                        child: Text(
                            'expressing good whishes on meeting or parting during the morning.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, bottom: 8),
                        child: Text(
                          '"He walked into Stein\'s lounge on Tuesday morning, bidding good morning to everyone who lined his route to the top table."',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
