import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'basic.gform.dart';

@ReactiveFormAnnotation()
class Basic {
  final String email;

  final String password;

  Basic({
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.email = '',
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.password = '',
  });
}