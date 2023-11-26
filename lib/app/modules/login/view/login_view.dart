import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack4/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailController.text)) {
                      return 'Введите корректный email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Почта',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.length < 8) {
                      return 'Пароль должен быть не короче 8 символов';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Пароль',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      controller.login(
                          emailController.text, passwordController.text);
                    }
                  },
                  child: const Text('Войти'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.REGISTER);
                    },
                    child: const Text('Регистрация'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
