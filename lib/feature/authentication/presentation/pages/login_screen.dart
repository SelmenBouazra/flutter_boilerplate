import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/injection_container.dart' as di;

import '../../../../core/theme/color.dart';
import '../../../../core/utils/popup.dart';
import '../../../../core/widgets/custom_dialog.dart';
import '../../../../generated/l10n.dart';
import '../../domain/entities/login_request.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/login_widget.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = di.sl<AuthBloc>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    authBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authBloc,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is FailureLoginState) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomDialog(
                  message: state.error.message,
                  onTap: () {},
                );
              },
            );
          }

          if (state is SuccessLoginState) {
            showSuccessPopup(context, S.of(context).congratulations,
                "Hello ${state.authResponse?.firstName}", () {
              context.maybePop();
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  SafeArea(child: _buildBody(context)),
                  if (state is LoadingLoginState)
                    Center(
                        child: CircularProgressIndicator(
                      color: secondary,
                    )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: LoginWidget(
        login: (LoginRequest loginRequest) {
          authBloc.add(LoginEvent(loginRequest: loginRequest));
        },
      ),
    );
  }
}
