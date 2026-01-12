import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uas/event.dart';


//bloc, tempat logic jalan, bloc menerima event, dan melakukan logic dan proses event disini
class GreetingBloc extends Bloc<GreetingEvent, String> {
  
  GreetingBloc() : super("Hello "){
    
    on<sayMorning>((event, emit){
      emit("Good Morning ");
    });


    //emit merupakan hasil state yang berubah, di blok ini berarti saat event saynight ditrigger, maka emit akan mengubah state
    on<sayNight>((event, emit){
      emit("Good Night");
    });


  }
}