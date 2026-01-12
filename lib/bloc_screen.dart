import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uas/greeting_bloc.dart';
import 'event.dart';

class greetings extends StatelessWidget {
  const greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            BlocBuilder<GreetingBloc, String>(
        builder: (context, pesanSekarang) {
          return Text(
            pesanSekarang,
          );
        } ,
      ),

      SizedBox(height: 14,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
                    onPressed: () {
                      // KIRIM SURAT: "Tolong jalanin SayMorning"
                      context.read<GreetingBloc>().add(sayMorning());
                    },
                    child: Text("Pagi"),
                  ),

                  // Tombol Malam
                  ElevatedButton(
                    onPressed: () {
                      // KIRIM SURAT: "Tolong jalanin SayNight"
                      context.read<GreetingBloc>().add(sayNight());
                    },
                    child: Text("Malam"),
                  ),
        ],
      )
        ],
      )
      
    );
  }
}