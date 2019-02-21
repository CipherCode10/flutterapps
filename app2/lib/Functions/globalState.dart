import 'package:flutter/material.dart';



class globalState {

final Map<dynamic , dynamic> _data = <dynamic , dynamic>{};
static globalState instance = new globalState._();

globalState._();

set(dynamic key , dynamic value) => _data[key] = value;

get(dynamic key ) => _data[key] ;

}


