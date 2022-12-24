import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 1, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: Color.fromARGB(255, 167, 76, 175)));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('Realiza una actividad'
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomePage(),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List activities = [
    "Correr",
    "Caminar",
    "Escuchar",
    "Leer",
    "Cantar",
    "Cocinar",
    "Comer",
    "Estudiar",
  ];
  List desig = [
    "ayuda a tu cuerpo",
    "despeja tu mente",
    "canciones",
    "libro favorito",
    "disfrutar la musica",
    "tu plato favorito",
    "algo saludable",
    "Animo tu puedes",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (BuildContext contex, int index) => Container(
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        color: Color.fromARGB(255, 240, 7, 201),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 240, 7, 201),
                          foregroundColor: Color.fromARGB(255, 240, 7, 201),
                          backgroundImage: NetworkImage(
                              "https://www.literautas.com/es/blog/wp-content/uploads/de-que-hablo-cuando-hablo-de-correr-murakami.png"),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(activities[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                          Text(desig[index],
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 16, 132, 226)),
                      ),
                      onPressed: () {},
                      child: Text('Iniciar Actividad'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}