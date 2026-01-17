void main() {
  /*var: is determine at compile time based on
   initial value 
   # it not datatype 
   # can't change later 
   #provide type safety 
   */
  var name = 'ghada';
  print('my name is $name');
  /*dynamic:is checked at runtime 
  #can change any time 
  #flexibility but loses safety 
  # weak datatype and not recommended */
  dynamic RandomValue = 'Hello ';
  print(RandomValue);
  RandomValue = 35;
  print(RandomValue);
}
