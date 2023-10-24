import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.read_more,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mullana",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 60.0),
              WeatherInfo(),
              SizedBox(height: 90.0),
              box(),
              SizedBox(height: 120.0),
              air(),
              SizedBox(height: 50.0),
              details(),
              SizedBox(height: 20.0),
              icons(),
              SizedBox(height: 20.0),
              line(),
              SizedBox(height: 20.0),
              moon(),
            ],
          ),
        )),
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeatherDetails(
          time: "Now",
          temperature: "25",
        ),
        WeatherDetails(
          time: "8:00 PM",
          temperature: "24",
        ),
        WeatherDetails(
          time: "9:00 PM",
          temperature: "27",
        ),
        WeatherDetails(
          time: "10:00 PM",
          temperature: "29",
        ),
      ],
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String time;
  final String temperature;

  WeatherDetails({required this.time, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 97, 230, 223),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            time,
            style: TextStyle(
              color: Color.fromARGB(255, 243, 246, 247),
              fontSize: 20.0,
            ),
          ),
          Text(
            temperature + "°",
            style: TextStyle(
              color: Color.fromARGB(255, 245, 250, 250),
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}

class box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        week(
          day: "today",
          weather: "sunny",
          temperature: "25",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        week(
          day: "thur",
          weather: "thunder",
          temperature: "24",
          image: ("assets/thunder.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        week(
          day: "fri",
          weather: "thunder",
          temperature: "27",
          image: ("assets/thunder.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        week(
          day: "sat",
          weather: "sunny",
          temperature: "29",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
      ],
    );
  }
}

class week extends StatelessWidget {
  final String day;
  final String temperature;
  final String weather;
  final String image;

  const week(
      {required this.day,
      required this.weather,
      required this.temperature,
      required this.image,
      required double imagewidth,
      required double imageheight});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color.fromARGB(179, 87, 234, 253),
        ),
        child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              day,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              weather,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              temperature + "°",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 1),
            Image.asset(
              image,
              height: 30,
              width: 30,
            )
          ]),
        ));
  }
}

class air extends StatefulWidget {
  const air({super.key});

  @override
  State<air> createState() => _airState();
}

class _airState extends State<air> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30.0),
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Color.fromARGB(179, 247, 248, 248)),
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              line(),
              Expanded(
                child: Text(
                  " AIR INDEX",
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 13, 14, 13),
                    fontSize: 20.0,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  " 83",
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 12, 14, 3),
                    fontSize: 15.0,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  " air index is satisfactory...",
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 10, 0),
                    fontSize: 12.0,
                  ),
                ),
              )
            ]));
  }
}

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Text(
      " Weather Details",
      selectionColor: const Color.fromARGB(255, 13, 14, 12),
      textScaleFactor: 2.0,
    );
  }
}

class line extends StatefulWidget {
  const line({super.key});

  @override
  State<line> createState() => _lineState();
}

class _lineState extends State<line> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 235, 96, 86),
              Colors.yellow,
              Colors.blue,
              Colors.black,
              Colors.white
            ], stops: [
              0.0,
              1.0
            ])));
  }
}

class icons extends StatefulWidget {
  const icons({super.key});

  @override
  State<icons> createState() => _iconsState();
}

class _iconsState extends State<icons> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        total(),
      ],
    );
  }
}

class total extends StatefulWidget {
  const total({super.key});

  @override
  State<total> createState() => _totalState();
}

class _totalState extends State<total> {
  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.transparent,
        ),
        height: 300,
        width: 300,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              wind(),
              feelslike(),
              SizedBox(
                width: 70,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              humidity(),
              uv(),
              SizedBox(
                width: 70,
              )
            ],
          )
        ])));
  }
}

class feelslike extends StatefulWidget {
  const feelslike({super.key});

  @override
  State<feelslike> createState() => _feelslikeState();
}

class _feelslikeState extends State<feelslike> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/temp.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(179, 59, 61, 61)),
      width: 100,
      height: 100,
      child: const Text("feels like 23 degrees ",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 15, 12, 12),
          )),
    );
  }
}

class wind extends StatefulWidget {
  const wind({super.key});

  @override
  State<wind> createState() => _windState();
}

class _windState extends State<wind> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/7e37d59f6fa3f9edd77d535d26def421.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(179, 59, 61, 61)),
      width: 100,
      height: 100,
      child: const Text("wind speed /n 8km/h ",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 15, 12, 12),
          )),
    );
  }
}

class humidity extends StatefulWidget {
  const humidity({super.key});

  @override
  State<humidity> createState() => _humidityState();
}

class _humidityState extends State<humidity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/bigstock-Blue-Background-Of-Natural-Wat-448994423.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 248, 242, 244),
      ),
      height: 100,
      width: 100,
      child: const Row(children: [
        Text("humidity/n 57%",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 15, 12, 12),
            ))
      ]),
    );
  }
}

class uv extends StatefulWidget {
  const uv({super.key});

  @override
  State<uv> createState() => _uvState();
}

class _uvState extends State<uv> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/sun-icon-clipart-vector-in-white-background-image.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 248, 242, 244),
      ),
      height: 100,
      width: 100,
      child: const Row(children: [
        Text("uv",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 15, 12, 12),
            ))
      ]),
    );
  }
}

class moon extends StatefulWidget {
  const moon({super.key});

  @override
  State<moon> createState() => _moonState();
}

class _moonState extends State<moon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/moon.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Container(
              child: Text('sunrise at 6:20 am \n sunset at 5:55pm ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 12, 12),
                  )),
              height: 200,
              width: 1000)
        ]));
  }
}
