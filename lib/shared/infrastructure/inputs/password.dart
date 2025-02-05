import 'package:formz/formz.dart';

enum NameError { empty, invalid }

enum LastNameError { empty, invalid }

enum PhoneError { empty, invalid }

enum PasswordError { empty, length, format }

enum ConfirmPasswordError { empty, mismatch }

// Clase para validar el nombre
class Name extends FormzInput<String, NameError> {
  static final RegExp nameRegExp = RegExp(r'^[a-zA-Z\s]+$');

  const Name.pure() : super.pure('');

  const Name.dirty(super.value) : super.dirty();

  // Mensajes de error
  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == NameError.empty) return 'El nombre es requerido';
    if (displayError == NameError.invalid) return 'El nombre no es válido';

    return null;
  }

  // Validación del nombre
  @override
  NameError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return NameError.empty;
    if (!nameRegExp.hasMatch(value)) return NameError.invalid;

    return null;
  }
}

// Clase para validar el apellido
class LastName extends FormzInput<String, LastNameError> {
  static final RegExp lastNameRegExp = RegExp(r'^[a-zA-Z\s]+$');

  const LastName.pure() : super.pure('');

  // Constructor para estado modificado
  const LastName.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == LastNameError.empty) return 'El apellido es requerido';
    if (displayError == LastNameError.invalid) {
      return 'El apellido no es válido';
    }

    return null;
  }

  // Validación del apellido
  @override
  LastNameError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return LastNameError.empty;
    if (!lastNameRegExp.hasMatch(value)) return LastNameError.invalid;

    return null;
  }
}

// Clase para validar el teléfono
class Phone extends FormzInput<String, PhoneError> {
  static final RegExp phoneRegExp = RegExp(r'^[0-9]{10}$');

  const Phone.pure() : super.pure('');

  const Phone.dirty(super.value) : super.dirty();

  // Mensajes de error
  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == PhoneError.empty) return 'El teléfono es requerido';
    if (displayError == PhoneError.invalid) return 'El teléfono no es válido';

    return null;
  }

  // Validación del teléfono
  @override
  PhoneError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PhoneError.empty;
    if (!phoneRegExp.hasMatch(value)) return PhoneError.invalid;

    return null;
  }
}

// Clase para validar la contraseña
class Password extends FormzInput<String, PasswordError> {
  static final RegExp passwordRegExp = RegExp(
    r'(?:(?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$',
  );

  const Password.pure() : super.pure('');

  const Password.dirty(super.value) : super.dirty();

  // Mensajes de error
  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == PasswordError.empty) return 'El campo es requerido';
    if (displayError == PasswordError.length) return 'Mínimo 6 caracteres';
    if (displayError == PasswordError.format) {
      return 'Debe de tener Mayúscula, letras y un número';
    }

    return null;
  }

  // Validación de la contraseña
  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 6) return PasswordError.length;
    if (!passwordRegExp.hasMatch(value)) return PasswordError.format;

    return null;
  }
}

// Clase para validar la confirmación de contraseña
class ConfirmPassword extends FormzInput<String, ConfirmPasswordError> {
  final String password;

  const ConfirmPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmPassword.dirty(super.value, {this.password = ''})
      : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == ConfirmPasswordError.empty) {
      return 'El campo es requerido';
    }
    {
      if (displayError == ConfirmPasswordError.mismatch) {
        return 'Las contraseñas no coinciden';
      }
    }

    return null;
  }

  // Validación de la confirmación de contraseña
  @override
  ConfirmPasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return ConfirmPasswordError.empty;
    }

    if (value != password) return ConfirmPasswordError.mismatch;

    return null;
  }
}
