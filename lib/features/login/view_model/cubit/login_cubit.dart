

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medbok/core/networking/api_result.dart';
import 'package:medbok/features/login/data/models/login_request_body.dart';
import 'package:medbok/features/login/data/models/login_response.dart';
import 'package:medbok/features/login/data/repos/login_repo.dart';
import 'package:medbok/features/login/view_model/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async{
    emit(const LoginState.loading());
     final resoinse = await _loginRepo.login(loginRequestBody);
     resoinse.when(success: (LoginResponse){
      emit(LoginState.success(LoginResponse));
     }, failure: (error){
    emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
     });
  }
}
