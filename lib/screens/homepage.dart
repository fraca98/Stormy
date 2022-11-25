import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0XFFFAE177), Color(0xFFFFBE94)],
              stops: [0, 0.5],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        MdiIcons.mapMarker,
                        color: Color(0xFF2F2E62),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('San Francisco',
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2F2E62),
                        )),
                    Spacer(),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          MdiIcons.mapSearch,
                          color: Color(0xFF2F2E62),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.all(5),
                  child: RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                    child: Image.asset(
                      'assets/images/weather/Sun.png',
                    ),
                  )),
              Text(
                "It's hot",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color(0xFF2F2E62),
                ),
              ),
              Stack(children: [
                Align(
                  child: Text(
                    '28',
                    style: GoogleFonts.quicksand(
                      fontSize: 75,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F2E62),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.35, 0),
                  child: Text(
                    '°',
                    style: GoogleFonts.quicksand(
                      fontSize: 75,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2F2E62),
                    ),
                  ),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(children: [
                      Icon(
                        MdiIcons.weatherWindy,
                        color: Color(0xFF2F2E62),
                      ),
                      Text(
                        ' 2 km/h',
                        style: GoogleFonts.quicksand(
                          color: Color(0xFF2F2E62),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        MdiIcons.waterOutline,
                        color: Color(0xFF2F2E62),
                      ),
                      Text(
                        ' 32%',
                        style: GoogleFonts.quicksand(
                          color: Color(0xFF2F2E62),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        MdiIcons.leaf,
                        color: Color(0xFF2F2E62),
                      ),
                      Text(
                        ' 2 AQI',
                        style: GoogleFonts.quicksand(
                          color: Color(0xFF2F2E62),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    return TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {},
                        child: Text(
                          'Today, 18 Sep',
                          style: GoogleFonts.quicksand(
                            color: Color(0xFF2F2E62),
                          ),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Card(
                          color: Color(0xFFFFCCA5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09:00 AM',
                                  style: GoogleFonts.quicksand(
                                    color: Color(0xFF2F2E62),
                                  ),
                                ),
                                Image.asset('assets/images/weather/Sun.png'),
                                Stack(children: [
                                  Align(
                                    child: Text(
                                      '28',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2F2E62),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.75, 0),
                                    child: Text(
                                      '°',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2F2E62),
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        )),
      ),
    );
  }
}
