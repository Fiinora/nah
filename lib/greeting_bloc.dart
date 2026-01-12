import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uas/event.dart';

class GreetingBloc extends Bloc<GreetingEvent, String> {
  
  GreetingBloc() : super("Hello "){
    
    on<sayMorning>((event, emit){
      emit("Good Morning ");
    });

    on<sayNight>((event, emit){
      emit("Good Night");
    });


  }
}