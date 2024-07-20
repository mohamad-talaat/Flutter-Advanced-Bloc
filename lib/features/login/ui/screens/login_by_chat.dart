// import 'package:flutter/material.dart';
// import 'package:flutter_advanced_omar_ahmed/core/widgets/app_text_form_field.dart';
// import 'package:flutter_advanced_omar_ahmed/features/login/data/login_repo.dart';
// import 'package:flutter_advanced_omar_ahmed/features/login/logic/cubit_by_chat.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../core/helpers/spacing.dart';
// import '../../../../core/theming/styles.dart';
// import '../../../../core/widgets/app_text_button.dart';
// import '../widgets/already_have_account_text.dart';
// import '../widgets/terms_and_conditions_text.dart';
 
// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);

//   final formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => LoginCubit(context.read<LoginRepo>()),
//       child: BlocConsumer<LoginCubit, LoginState>(
//         listener: (context, state) {
//           if (state is LoginSuccess) {
//             // Navigate to home screen or show success message
//           } else if (state is LoginFailure) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('Login failed: ${state.error}')),
//             );
//           }
//         },
//         builder: (context, state) {
//           return Scaffold(
//             body: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Welcome Back',
//                         style: TextStyles.font24BlueBold,
//                       ),
//                       verticalSpace(8),
//                       Text(
//                         'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
//                         style: TextStyles.font14GrayRegular,
//                       ),
//                       verticalSpace(36),
//                       Form(
//                         key: formKey,
//                         child: Column(
//                           children: [
//                             AppTextFormField(
//                               hintText: 'Email',
//                               controller: _emailController,
//                             ),
//                             verticalSpace(18),
//                             AppTextFormField(
//                               hintText: 'Password',
//                               controller: _passwordController,
//                               isObscureText: true,
//                               suffixIcon: Icon(Icons.visibility_off),
//                             ),
//                             verticalSpace(24),
//                             Align(
//                               alignment: AlignmentDirectional.centerEnd,
//                               child: Text(
//                                 'Forgot Password?',
//                                 style: TextStyles.font13BlueRegular,
//                               ),
//                             ),
//                             verticalSpace(40),
//                             AppTextButton(
//                               buttonText: "Login",
//                               textStyle: TextStyles.font16WhiteSemiBold,
//                               onPressed: () {
//                                 if (formKey.currentState!.validate()) {
//                                   context.read<LoginCubit>().login(
//                                     _emailController.text,
//                                     _passwordController.text,
//                                   );
//                                 }
//                               },
//                             ),
//                             if (state is LoginLoading)
//                               CircularProgressIndicator(),
//                             verticalSpace(16),
//                             const TermsAndConditionsText(),
//                             verticalSpace(60),
//                             const AlreadyHaveAccountText(),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
