class FieldValidator{
    static String validateEmail(String _email){
      if( value.isEmpty) return 'Enter email';
      else if(FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.trim(), password: _password)).user;) return null;
      else return "Email or password incorrect";
    }
    static string validatePassword(String _password){
      if( value.isEmpty) return 'Enter Password';
      else if(FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.trim(), password: _password)).user;) return null;
      else return "Email or password incorrect";
    } 
}