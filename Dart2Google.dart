#import('dart:html');
#import('dart:json');

#source('Person.dart');
#source('GooglePlusApi.dart');

final String _MISCHAS_ACCOUNT_ID = "104512463398531242371"; 

void main() {
  
  GooglePlusApi gpApi = new GooglePlusApi();
  Person person = gpApi.findPerson(_MISCHAS_ACCOUNT_ID);
 
  document.query('#status').innerHTML = person.toString();
}
