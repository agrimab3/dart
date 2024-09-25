

// List<Map<String, dynamic>> pokeinfo (){
//   Map<String, dynamic> pokelist = {"count":1302,"next":"https://pokeapi.co/api/v2/pokemon?offset=2&limit=2","previous":null,"results":[{"name":"bulbasaur","url":"https://pokeapi.co/api/v2/pokemon/1/"},{"name":"ivysaur","url":"https://pokeapi.co/api/v2/pokemon/2/"}]};
//   return(pokelist["results"]);
// }

// void main(){
//   List<Map<String, dynamic>> printpoke = pokeinfo();
//   print(printpoke);
// }



List<Map<String, String>> pokeinfo (){
  Map<String, dynamic> pokelist = {"count":1302,"next":"https://pokeapi.co/api/v2/pokemon?offset=2&limit=2","previous":null,"results":[{"name":"bulbasaur","url":"https://pokeapi.co/api/v2/pokemon/1/"},{"name":"ivysaur","url":"https://pokeapi.co/api/v2/pokemon/2/"}]};
  return(pokelist["results"]);
}

void main(){
  List<Map<String, String>> printpoke = pokeinfo();
//   print(printpoke);
//   print(printpoke[1]);
for (int i = 0; i<printpoke.length ;i++){
    // print(i);
    // print(printpoke[i]);
    print(printpoke[i]['name']);
    if (printpoke[i]["name"]=='bulbasaur'){
        print("and");
    }
    else{
        print("NOO");
    }
    // print('${printpoke[0]['name']}, ${printpoke[1]['name']}');
    }
}

//PUSH CODE IN GITHUB
//line 25. - check condition w if statements!

// String getMyName(){
//     String myname = ["raju","bob","jack"];
//     return(myname[1]);
// }

// void main(){
//     String printmyname = getMyName();
//     print(printmyname);
// }

