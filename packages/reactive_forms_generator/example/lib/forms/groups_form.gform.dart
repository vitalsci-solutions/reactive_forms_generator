// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'groups_form.dart';

class ReactiveGroupFormConsumer extends StatelessWidget {
  ReactiveGroupFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GroupForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveGroupForm.of(context);

    if (form is! GroupForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class GroupFormInheritedStreamer extends InheritedStreamer<dynamic> {
  GroupFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final GroupForm form;
}

class ReactiveGroupForm extends StatelessWidget {
  ReactiveGroupForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final GroupForm form;

  final WillPopCallback? onWillPop;

  static GroupForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<GroupFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<GroupFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GroupFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GroupFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class GroupFormBuilder extends StatefulWidget {
  GroupFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final Group model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  @override
  _GroupFormBuilderState createState() => _GroupFormBuilderState();
}

class _GroupFormBuilderState extends State<GroupFormBuilder> {
  late FormGroup _form;

  late GroupForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = GroupForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveGroupForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _formModel, widget.child),
      ),
    );
  }
}

class GroupForm {
  GroupForm(this.group, this.form, this.path) {
    personalForm = PersonalForm(group.personal, form, 'personal');
    phoneForm = PhoneForm(group.phone, form, 'phone');
    addressForm = AddressForm(group.address, form, 'address');
    address2Form = AddressForm(group.address2, form, 'address2');
  }

  String personal = "personal";

  String phone = "phone";

  String address = "address";

  String address2 = "address2";

  static String personalControlName = "personal";

  static String phoneControlName = "phone";

  static String addressControlName = "address";

  static String address2ControlName = "address2";

  late PersonalForm personalForm;

  late PhoneForm phoneForm;

  late AddressForm addressForm;

  late AddressForm address2Form;

  final Group group;

  final FormGroup form;

  final String? path;

  Group get model => Group(
      personal: personalForm.model,
      phone: phoneForm.model,
      address: addressForm.model,
      address2: address2Form.model);
  FormGroup formElements() => FormGroup({
        personal: personalForm.formElements(),
        phone: phoneForm.formElements(),
        address: addressForm.formElements(),
        address2: address2Form.formElements()
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PersonalForm {
  PersonalForm(this.personal, this.form, this.path) {}

  String name = "name";

  String email = "email";

  static String nameControlName = "name";

  static String emailControlName = "email";

  final Personal? personal;

  final FormGroup form;

  final String? path;

  String nameControlPath() => [path, "name"].whereType<String>().join(".");
  String emailControlPath() => [path, "email"].whereType<String>().join(".");
  String? get nameValue => nameControl.value;
  String? get emailValue => emailControl.value;
  bool get containsName => form.contains(nameControlPath());
  bool get containsEmail => form.contains(emailControlPath());
  Object? get nameErrors => nameControl.errors;
  Object? get emailErrors => emailControl.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  Personal get model => Personal(name: nameValue, email: emailValue);
  FormGroup formElements() => FormGroup({
        name: FormControl<String>(
            value: personal?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        email: FormControl<String>(
            value: personal?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PhoneForm {
  PhoneForm(this.phone, this.form, this.path) {}

  String phoneNumber = "phoneNumber";

  String countryIso = "countryIso";

  static String phoneNumberControlName = "phoneNumber";

  static String countryIsoControlName = "countryIso";

  final Phone? phone;

  final FormGroup form;

  final String? path;

  String phoneNumberControlPath() =>
      [path, "phoneNumber"].whereType<String>().join(".");
  String countryIsoControlPath() =>
      [path, "countryIso"].whereType<String>().join(".");
  String? get phoneNumberValue => phoneNumberControl.value;
  String? get countryIsoValue => countryIsoControl.value;
  bool get containsPhoneNumber => form.contains(phoneNumberControlPath());
  bool get containsCountryIso => form.contains(countryIsoControlPath());
  Object? get phoneNumberErrors => phoneNumberControl.errors;
  Object? get countryIsoErrors => countryIsoControl.errors;
  void get phoneNumberFocus => form.focus(phoneNumberControlPath());
  void get countryIsoFocus => form.focus(countryIsoControlPath());
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
  FormControl<String> get countryIsoControl =>
      form.control(countryIsoControlPath()) as FormControl<String>;
  Phone get model =>
      Phone(phoneNumber: phoneNumberValue, countryIso: countryIsoValue);
  FormGroup formElements() => FormGroup({
        phoneNumber: FormControl<String>(
            value: phone?.phoneNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countryIso: FormControl<String>(
            value: phone?.countryIso,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm {
  AddressForm(this.address, this.form, this.path) {}

  String street = "street";

  String city = "city";

  String zip = "zip";

  static String streetControlName = "street";

  static String cityControlName = "city";

  static String zipControlName = "zip";

  final Address? address;

  final FormGroup form;

  final String? path;

  String streetControlPath() => [path, "street"].whereType<String>().join(".");
  String cityControlPath() => [path, "city"].whereType<String>().join(".");
  String zipControlPath() => [path, "zip"].whereType<String>().join(".");
  String? get streetValue => streetControl.value;
  String? get cityValue => cityControl.value;
  String? get zipValue => zipControl.value;
  bool get containsStreet => form.contains(streetControlPath());
  bool get containsCity => form.contains(cityControlPath());
  bool get containsZip => form.contains(zipControlPath());
  Object? get streetErrors => streetControl.errors;
  Object? get cityErrors => cityControl.errors;
  Object? get zipErrors => zipControl.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void get zipFocus => form.focus(zipControlPath());
  FormControl<String> get streetControl =>
      form.control(streetControlPath()) as FormControl<String>;
  FormControl<String> get cityControl =>
      form.control(cityControlPath()) as FormControl<String>;
  FormControl<String> get zipControl =>
      form.control(zipControlPath()) as FormControl<String>;
  Address get model =>
      Address(street: streetValue, city: cityValue, zip: zipValue);
  FormGroup formElements() => FormGroup({
        street: FormControl<String>(
            value: address?.street,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        city: FormControl<String>(
            value: address?.city,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        zip: FormControl<String>(
            value: address?.zip,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}
