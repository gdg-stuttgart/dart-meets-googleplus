#import('dart:html');
#import('GooglePlus.dart');

class Dart2Google {

  Dart2Google() {
  }
}
  
final String _MISCHAS_ACCOUNT_ID = "104512463398531242371"; 

void main() {
   
  GooglePlus gp = new GooglePlus();
  Person person = gp.findPerson(_MISCHAS_ACCOUNT_ID);
     
}