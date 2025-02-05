import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:servi_mix/presentation/providers/auth_provider.dart';
import 'package:servi_mix/shared/infrastructure/inputs/inputs.dart';

final registerFormProvider =
    StateNotifierProvider.autoDispose<RegisterFormNotifier, RegisterFormState>(
        (ref) {
  final registerUserCallBack = ref.watch(authProvider.notifier).registerUser;
  return RegisterFormNotifier(
    registerUserCallBack: registerUserCallBack,
  );
});

class RegisterFormState {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final Name name;
  final LastName lastname;
  final Phone phone;

  RegisterFormState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValid = false,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.name = const Name.pure(),
    this.lastname = const LastName.pure(),
    this.phone = const Phone.pure(),
  });
  RegisterFormState copyWith(
          {bool? isPosting,
          bool? isFormPosted,
          bool? isValid,
          Email? email,
          Password? password,
          ConfirmPassword? confirmPassword,
          Name? name,
          LastName? lastname,
          Phone? phone}) =>
      RegisterFormState(
          isPosting: isPosting ?? this.isPosting,
          isFormPosted: isFormPosted ?? this.isFormPosted,
          isValid: isValid ?? this.isValid,
          email: email ?? this.email,
          password: password ?? this.password,
          confirmPassword: confirmPassword ?? this.confirmPassword,
          name: name ?? this.name,
          lastname: lastname ?? this.lastname,
          phone: phone ?? this.phone);

  @override
  String toString() {
    return '''
    LoginFormState:
    isPosting : $isPosting
    isFormPosted : $isFormPosted
    isvalid : $isValid
    email : $email
    password : $password
    confirmPassword : $confirmPassword
    name : $name
    lastname : $lastname
    phone : $phone
''';
  }
}

class RegisterFormNotifier extends StateNotifier<RegisterFormState> {
  final Function(String email, String password, String name, String lastname,
      String phone) registerUserCallBack;

  RegisterFormNotifier({
    required this.registerUserCallBack,
  }) : super(RegisterFormState());

  onEmailChange(String value) {
    final newEmail = Email.dirty(value);
    state = state.copyWith(
        email: newEmail, isValid: Formz.validate([newEmail, state.password]));
  }

  onPasswordChange(String value) {
    final newPassword = Password.dirty(value);
    state = state.copyWith(
        password: newPassword,
        isValid: Formz.validate([newPassword, state.email]));
  }

  onConfirmPasswordChange(String value) {
    final newConfirmPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value,
    );

    state = state.copyWith(
        confirmPassword: newConfirmPassword,
        isValid: Formz.validate([newConfirmPassword, state.password]));
  }

  onNameChange(String value) {
    final newName = Name.dirty(value);
    state = state.copyWith(name: newName, isValid: Formz.validate([newName]));
  }

  onLastNameChange(String value) {
    final newLastName = LastName.dirty(value);
    state = state.copyWith(
        lastname: newLastName, isValid: Formz.validate([newLastName]));
  }

  onPhoneChange(String value) {
    final newPhone = Phone.dirty(value);
    state =
        state.copyWith(phone: newPhone, isValid: Formz.validate([newPhone]));
  }

  onFormRegisterSubmit() async {
    _touchEveryField();
    if (!state.isValid) return;

    state = state.copyWith(isPosting: true);

    await registerUserCallBack(state.email.value, state.password.value,
        state.name.value, state.lastname.value, state.phone.value);
    state = state.copyWith(isPosting: false);
  }

  _touchEveryField() {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    final name = Name.dirty(state.name.value);
    final lastname = LastName.dirty(state.lastname.value);
    final phone = Phone.dirty(state.phone.value);

    state = state.copyWith(
        isFormPosted: true,
        email: email,
        password: password,
        name: name,
        lastname: lastname,
        phone: phone,
        isValid: Formz.validate([email, password, name, lastname, phone]));
  }
}
