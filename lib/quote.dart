class Quote{
  String text;
  String author;

  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;
  // }

  // named parameters
  // when we create a new instance, it should be Quote({text:'hello',author:'world'})
  // order of parameters does not matter anymore

  Quote({this.text='', this.author=''}){ // default value must be given to escape probable null error
  }
}