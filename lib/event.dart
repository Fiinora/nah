
//event untuk trigger event yang dikirim dari ui, misal saat user klik tombol saymoring, maka event saymorning akan tertrigger
abstract class GreetingEvent{}

class sayMorning extends GreetingEvent{}

class sayNight extends GreetingEvent{}