import 'package:bloc_usage/IkinciSayfa.dart';
import 'package:bloc_usage/SayacCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SayacCubit()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: AnaSayfa(),
        ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit,int>(builder: (context,sayacDegeri){
              return Text(
                "$sayacDegeri",
                style: TextStyle(fontSize: 36),
              );
            }),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IkinciSayfa(),
                  ),
                );
              },
              child: Text("Geçiş yap"),
            ),
          ],
        ),
      ),
    );
  }
}
