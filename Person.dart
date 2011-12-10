class Person {

  // '_' Kennzeichnet private. Alles andere ist public
  String _name;
  String _vorname;
  
  Person (String name, String vorname){
    _name = name;
    _vorname = vorname;
  }
  
  // Getter
  String get name() => _name;
  String get vorname() => _vorname;
  
  // Setter
  void set name(String name) {
    
    if (name == null) {
      throw 'Name ist null!';
    }
    
    _name = name;
  }
  
  void set vorname(String vorname) {
    
    if (vorname == null) {
      throw 'Vorname ist null!';
    }
    
    _name = name;
  }

  String toString(){
    return _vorname + " " + _name;
  }
}
