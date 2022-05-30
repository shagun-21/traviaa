import 'package:bloc/bloc.dart';
import 'package:traviaa/cubit/app_cubit_states.dart';
import 'package:traviaa/model/data_model.dart';
import 'package:traviaa/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async{
  try{
      emit(LoadingState());
      places= await data.getInfo();
      emit(LoadedState(places));
  }catch(e){

  }
 }
 detailPage(dataModel data){
    emit(DetailState(data));
 }
}
