class GooglePlusApi {

  final String _API_KEY = "AIzaSyC8xz1qg0p1XzghRBX1ArNAqpcb1UWuzyQ";
  final String _URL = "https://www.googleapis.com/plus/v1/people/{%1}?pp=1&key={%2}";
  
  GooglePlus() {
  }

  Person findPerson(String accountId) {
    String url = _getUrlFor(accountId);
    doRequest(url);
  }
  
  String _getUrlFor(String accountId){
    return _URL.replaceFirst("{%1}", accountId).replaceFirst("{%2}", _API_KEY);
  }

  void doRequest(String url){
  
    XMLHttpRequest request = new XMLHttpRequest();
    request.open('GET', url, false); 
    request.send();
    
    print(request.status);
    print(request.responseText);
  }
}
