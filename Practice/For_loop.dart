/* Simple Hello, World! program */
void main(){
   List<String> names = ['abc', 'sds', 'sdsds'];
   print(names[0]);
   print(names.length);
   // 3 < 3 // false
   // 3 <= 3 // True
   for(int i=0; i<names.length;i++) {
       print(i);
       print(names[i]);
   }
}