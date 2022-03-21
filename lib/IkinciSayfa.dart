import 'package:bloc_usage/SayacCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IkinciSayfa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit, int>(
              builder: (context, sayacDegeri) {
                return Text(
                  "$sayacDegeri",
                  style: TextStyle(fontSize: 36),
                );
              },
            ),

            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayacArttir();
              },
              child: Text("Sayaç arttır"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SayacCubit>().sayacAzalt(2);
              },
              child: Text("Sayaç azalt"),
            ),
          ],
        ),
      ),
    );
  }
}
