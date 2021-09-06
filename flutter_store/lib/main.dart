import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: const [
                      Text(
                          "Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                      Spacer(),
                      Text(
                          "Tech",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                      ),
                      Spacer(),
                      Text(
                          "Beauty",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                      ),
                      Spacer(),
                      Text(
                          "Healthy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/store01.jpg",
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                    "Wooooooow!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/store02.jpg",
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/store03.jpg",
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ],
            ),
            // height: MediaQuery.of(context).size.height,
            height: 1000,
          ),
        ),
      ),
    );
  }
}


