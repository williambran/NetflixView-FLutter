import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp( Main());
}


class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  _Tep createState() => _Tep();

}


class _Tep extends State<Main> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Card> items;

  get funcion => null;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex: 0);



  }
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("iconoNetflix",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconNetflix,
          ],
        ),
        actions: [
          iconBtnSearch,
          iconBtnMenu
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Series",),
            Tab(text: "peliculas",),
            Tab(text: "Categorias ▾",),
          ],
          indicatorColor: Colors.white12,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: funcion,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            imageCover,
            _tabbarWito(),
            tendenciasText,
            listViewTedencias,
            SeriesRomanticas,
            listViewMovies,
            SeriesAnime,
            listViewAnime


          ],
        ),
      ),backgroundColor: Colors.black,

    ),
    
  );








 //Iconos
 var iconNetflix = Image.asset('Icons/icon-netflix.png',height: 36,fit: BoxFit.contain,);
 var iconBtnSearch = IconButton(onPressed: (){}, icon: Icon(Icons.search));
 var iconBtnMenu = IconButton(onPressed: (){}, icon: Icon(Icons.menu));

 //Imagenes
  var imageCoverd = Container(
  child: Image.network('https://cineuropa.org/Galleries/280/433/poster01_en_big.jpg?1415976789133',height: 560,),
  );

  var imageCover = Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Image.network('https://cineuropa.org/Galleries/280/433/poster01_en_big.jpg?1415976789133',height: 560,),

      Text("Etiquets ● Aventura ● Espacio ● Futuro ● Estrellas ● Mundos",style: TextStyle(color: Colors.white),)

    ],
  );


  var cardModel = Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
    Image.network('https://i.ytimg.com/vi/WajPmDGdfg4/movieposter.jpg',width: 137,height: 200,),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    elevation: 5,
  );



  var listViewMovies =
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 137,
              child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
              Image.network('https://pics.filmaffinity.com/Aguas_profundas-790981437-large.jpg',width: 137,height: 200,),

            ),
            Container(
              height: 200,
              width: 137,
              child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
              Image.network('https://img.wattpad.com/cover/68514659-352-k903795.jpg',width: 137,height: 200,),

            ),
            Container(
              height: 200,
              width: 137,
              child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
              Image.network('https://pics.filmaffinity.com/C_sate_conmigo-852565093-large.jpg',width: 137,height: 200,),

            ),
            Container(
              height: 200,
              width: 137,
              child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
              Image.network('https://i.ytimg.com/vi/WajPmDGdfg4/movieposter.jpg',width: 137,height: 200,),

            )
          ],
        ),
      );

  var listViewAnime =
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://static.wikia.nocookie.net/miraculousladybug/images/6/6c/Miraculous.png/revision/latest/top-crop/width/360/height/450?cb=20190204210351&path-prefix=es',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://www.formulatv.com/images/series/posters/100/135/dest_1.jpg',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2018/02/kakegurui-portada.jpg?itok=91PZiVHv',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://img1.ak.crunchyroll.com/i/spire3/09211a5ab1a7a41cbd18c90b1c8f076b1641869179_full.jpg',width: 137,height: 200,),

        )
      ],
    ),
  );



  var listViewTedencias =
  SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://cdn.moviefone.com/image-assets/628900/rJPGPZ5soaG27MK90oKpioSiJE2.jpg?d=360x540&q=50',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://pics.filmaffinity.com/Moonfall-138176660-large.jpg',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://img.wattpad.com/cover/68514659-352-k903795.jpg',width: 137,height: 200,),

        ),
        Container(
          height: 200,
          width: 137,
          child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
          Image.network('https://pics.filmaffinity.com/Aguas_profundas-790981437-large.jpg',width: 137,height: 200,),

        )
      ],
    ),
  );



  createCard(){

   return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: //Image.asset('images/originMov.jpeg',fit: BoxFit.fill,),
      Image.network('https://i.ytimg.com/vi/WajPmDGdfg4/movieposter.jpg',width: 137,height: 200,),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 5,
    );
  }


// Titulos de las series y peliculas
 var paddingIcon = Container(
  padding: const EdgeInsets.all(1.0),
 child: Text("Titulo nuevo") /*Image.asset('Icons/search-withe.png',height: 22,)*/ ,
 );

 var tendenciasText = Container(
  padding: const EdgeInsets.only(top: 20.0),
  alignment: Alignment.topLeft,
  child: Text(
    "Tendencias",
    style: TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.normal,
      fontSize: 22,
      fontWeight: FontWeight.bold),
  ),
 );
  var SeriesRomanticas = Container(
    padding: const EdgeInsets.only(top: 20.0),
    alignment: Alignment.topLeft,
    child: Text(
      "Series románticas",
      style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),

  );

  var SeriesAnime = Container(
    padding: const EdgeInsets.only(top: 20.0),
    alignment: Alignment.topLeft,
    child: Text(
      "Series de anime",
      style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),

  );


  
  
}



Widget _tabbarWito() {
  return Container(

    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.9)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.add_outlined,color: Colors.white,), onPressed: () {  },
            ),
            Text("Mi lista",style: TextStyle(color: Colors.white) ,)

          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow,color: Colors.white,), onPressed: () {  },
            ),
            Text("Reproducir",style: TextStyle(color: Colors.white) ,)

          ],
        ),
        Column(
          children: [
            IconButton(
              icon: Icon(Icons.info_outline,color: Colors.white,), onPressed: () {  },
            ),
            Text("Informacion",style: TextStyle(color: Colors.white) ,)

          ],
        ),

      ],
    ),
  );
}





//Documentation https://api.flutter.dev/flutter/material/TabController-class.html













































class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
