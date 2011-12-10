class GooglePlusApi {

  final String _API_KEY = "AIzaSyArKhnYYVWdPcEJNci0GuR9Pc_ptkNGA44";
  final String _URL = "https://www.googleapis.com/plus/v1/people/{%1}?pp=1&key={%2}";
  
  GooglePlus() {
  }

  Person findPerson(String accountId) {
    
    String url = _getUrlFor(accountId);
    String request = doRequest(url);
    
    return new Person(request, "");
  }
  
  String _getUrlFor(String accountId){
    return _URL.replaceFirst("{%1}", accountId).replaceFirst("{%2}", _API_KEY);
  }

  String doRequest(String url){ 
    

    XMLHttpRequest request = new XMLHttpRequest();
    
    request.on.readyStateChange.add(void _(Event event) {
      
      if (request.readyState == 4) {
        if (request.status == 200) {
          print(JSON.parse(request.responseText));
        } else {
          print("No");
        }
      }
    });

    request.open('GET', url, true);   
    request.send();
    
    return "";  
  }
}
