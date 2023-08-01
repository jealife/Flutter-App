import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ifiag'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const src =
        "https://images.unsplash.com/photo-1571260899304-425eee4c7efc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80";
    const diplome =
        "https://ifiag.com/wp-content/uploads/2022/05/diplome-francais-censure.jpg";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 136, 0, 1),
          title: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
            child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  src,
                  fit: BoxFit.cover,
                  width: 380,
                  height: 255,
                ),
                Container(
                  color: const Color.fromARGB(139, 0, 0, 0),
                  height: 255,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "IFIAG, plus qu'une école mais biodiversité intellectuele et culturelle",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Text(
                    "Nous co-construisons nos programmes autour de partenariats Public-Privé avec des universités en France, ce qui permet aux étudiants de bénéficier d’une formation plus riche, d’un encadrement international, et d'un diplôme étatique qui leur assure une reconnaissance et une employabilité à long terme."),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                )
              ]),
            ),
            Image.network(diplome)
          ],
        )),
        
        );
  }
}
