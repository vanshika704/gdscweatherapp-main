import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(//.
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
                  fontSize: 40.0,
                ),
              ),
              Text("25 degrees",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50.0,
                ),),
                Text("wed 31/18     Air quality:83-satisfactory",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 60.0),
              container1(),// time wise weather
              SizedBox(height: 90.0),
              weather(),
              SizedBox(height: 90.0),
              container2(),
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
              SizedBox(height: 20.0),
              icons1(),
              SizedBox(height: 20.0),
              icons2(),
              SizedBox(height: 20.0),
              icons3(),
            ],
          ),
        )),
      ),
    );
  }
}

class container1 extends StatefulWidget {
  const container1({super.key});

  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    return Container(//first container containing the weather information along with the timings
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color.fromARGB(255, 75, 183, 226),
        ),
        width: MediaQuery.of(context).size.width,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          WeatherInfo(),
        ]));
  }
}

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WeatherDetails(
          time: "Now",
          temperature: "25",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        WeatherDetails(
          time: "8:00 PM",
          temperature: "24",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        WeatherDetails(
          time: "9:00 PM",
          temperature: "27",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
        WeatherDetails(
          time: "10:00 PM",
          temperature: "29",
          image: ("assets/sunny.jpg"),
          imagewidth: 0.1,
          imageheight: 0.1,
        ),
      ],
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String time;
  final String temperature;
  final String image;

  WeatherDetails(
      {required this.time,
      required this.temperature,
      required this.image,
      required double imagewidth,
      required double imageheight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 243, 246, 247),
              fontSize: 20.0,
            ),
          ),
          Text(
            temperature + "°",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 245, 250, 250),
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            image,
            height: 30,
            width: 30,
          )
        ],
      ),
    );
  }
}
class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _weatherState();
}

class _weatherState extends State<weather> {
  @override
  Widget build(BuildContext context) {
    return Container( width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
      ),
      child: Text("weather for this week", textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 245, 250, 250),
              fontSize: 25.0,
            ),),
    );
  }
}
class container2 extends StatefulWidget {
  const container2({super.key});

  @override
  State<container2> createState() => _container2State();
}

class _container2State extends State<container2> {
  @override
  Widget build(BuildContext context) {
    return  Container(width: MediaQuery.of(context).size.width ,
    color: Color.fromARGB(255, 75, 183, 226),
      child:box(),

    );
  }
}
class box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [//.
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
    return Container( width: MediaQuery.of(context).size.width *0.9,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
      ),
      child: Row(children: [
        Container( width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
           
            
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(
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
        Image.asset(
          image,
          height: 35,
          width: 35,
        )]))
      ]),
    );
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
          Row(// aditional features
            children: [
              SizedBox(
                width: 20,
              ),
              wind(),
              SizedBox(
                width: 20,
              ),
              feelslike(),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              humidity(),
              SizedBox(
                width: 20,
              ),
              uv(),
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
      width: 110,
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
      child: const Text("wind speed \n 8km/h ",
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
        Text("humidity\n 57%",
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
              child: Center(
                  child: Text('sunrise at 6:20 am \n sunset at 5:55pm ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 15, 12, 12),
                      ))),
              height: 200,
              width: 1000)
        ]));
  }
}

class icons1 extends StatefulWidget {
  const icons1({super.key});

  @override
  State<icons1> createState() => _icons1State();
}

class _icons1State extends State<icons1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [outdoor(), outdoor1()],
    ));
  }
}

class outdoor extends StatefulWidget {
  const outdoor({super.key});

  @override
  State<outdoor> createState() => _outdoorState();
}

class _outdoorState extends State<outdoor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 97, 230, 223),
      ),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.access_alarm_outlined,
            color: Colors.white,
            size: 50,
          )),
      height: 100,
      width: 100,
    );
  }
}

class outdoor1 extends StatefulWidget {
  const outdoor1({super.key});

  @override
  State<outdoor1> createState() => _outdoor1State();
}

class _outdoor1State extends State<outdoor1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 32, 37, 37),
      ),
      child: Row(
        children: [
          Text(
            "perfect timing to go out",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
      height: 100,
      width: 200,
    );
  }
}

class icons2 extends StatefulWidget {
  const icons2({super.key});

  @override
  State<icons2> createState() => _icons2State();
}

class _icons2State extends State<icons2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [car1(), car()],
      ),
    );
  }
}

class car1 extends StatefulWidget {
  const car1({super.key});

  @override
  State<car1> createState() => _car1State();
}

class _car1State extends State<car1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 97, 230, 223),
      ),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.car_repair,
            color: Colors.white,
            size: 50,
          )),
      height: 100,
      width: 100,
    );
  }
}

class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 32, 37, 37),
      ),
      child: Row(
        children: [
          Text(
            "can get car serviced",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
      height: 100,
      width: 200,
    );
  }
}

class icons3 extends StatefulWidget {
  const icons3({super.key});

  @override
  State<icons3> createState() => _icons3State();
}

class _icons3State extends State<icons3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [oil1(), oil()],
      ),
    );
  }
}

class oil1 extends StatefulWidget {
  const oil1({super.key});

  @override
  State<oil1> createState() => _oil1State();
}

class _oil1State extends State<oil1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 97, 230, 223),
      ),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.diamond,
            color: Colors.white,
            size: 50,
          )),
      height: 100,
      width: 100,
    );
  }
}

class oil extends StatefulWidget {
  const oil({super.key});

  @override
  State<oil> createState() => _oilState();
}

class _oilState extends State<oil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color.fromARGB(179, 32, 37, 37),
      ),
      child: Row(
        children: [
          Text(
            "get oil control",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
      height: 100,
      width: 150,
    );
  }
}
