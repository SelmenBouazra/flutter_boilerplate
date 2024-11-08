// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'The current Language',
      args: [],
    );
  }

  /// `Welcome on board`
  String get welcome {
    return Intl.message(
      'Welcome on board',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Parking name:`
  String get parking_name {
    return Intl.message(
      'Parking name:',
      name: 'parking_name',
      desc: '',
      args: [],
    );
  }

  /// `Book your spot or subscribe to a\nmembership in the parking that suits you.`
  String get welcome_description {
    return Intl.message(
      'Book your spot or subscribe to a\nmembership in the parking that suits you.',
      name: 'welcome_description',
      desc: '',
      args: [],
    );
  }

  /// `Easily find`
  String get first_onboarding_title1 {
    return Intl.message(
      'Easily find',
      name: 'first_onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `parking spaces around you`
  String get first_onboarding_title2 {
    return Intl.message(
      'parking spaces around you',
      name: 'first_onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `Book and pay for parking`
  String get second_onboarding_title1 {
    return Intl.message(
      'Book and pay for parking',
      name: 'second_onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `quickly and securely`
  String get second_onboarding_title2 {
    return Intl.message(
      'quickly and securely',
      name: 'second_onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `Extend parking time`
  String get third_onboarding_title1 {
    return Intl.message(
      'Extend parking time',
      name: 'third_onboarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `according to your needs`
  String get third_onboarding_title2 {
    return Intl.message(
      'according to your needs',
      name: 'third_onboarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message(
      'Connect',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with google`
  String get google_connect {
    return Intl.message(
      'Sign in with google',
      name: 'google_connect',
      desc: '',
      args: [],
    );
  }

  /// `Connect by phone`
  String get phone_connect {
    return Intl.message(
      'Connect by phone',
      name: 'phone_connect',
      desc: '',
      args: [],
    );
  }

  /// `Or else`
  String get or_else {
    return Intl.message(
      'Or else',
      name: 'or_else',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `unspecified`
  String get unspecified {
    return Intl.message(
      'unspecified',
      name: 'unspecified',
      desc: '',
      args: [],
    );
  }

  /// `Connect with Password`
  String get password_connect {
    return Intl.message(
      'Connect with Password',
      name: 'password_connect',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forget_password {
    return Intl.message(
      'Forgot password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forget_password_title {
    return Intl.message(
      'Forgot password',
      name: 'forget_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get connection {
    return Intl.message(
      'Log In',
      name: 'connection',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get or_continue_with {
    return Intl.message(
      'Or continue with',
      name: 'or_continue_with',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get create_account {
    return Intl.message(
      'Sign up',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `User Type`
  String get user_type {
    return Intl.message(
      'User Type',
      name: 'user_type',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Individual`
  String get particular {
    return Intl.message(
      'Individual',
      name: 'particular',
      desc: '',
      args: [],
    );
  }

  /// `Professional`
  String get professional {
    return Intl.message(
      'Professional',
      name: 'professional',
      desc: '',
      args: [],
    );
  }

  /// `contains at least 8 characters`
  String get contain_characters {
    return Intl.message(
      'contains at least 8 characters',
      name: 'contain_characters',
      desc: '',
      args: [],
    );
  }

  /// `contains at least one number`
  String get contain_numbers {
    return Intl.message(
      'contains at least one number',
      name: 'contain_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile`
  String get complete_profile {
    return Intl.message(
      'Complete your profile',
      name: 'complete_profile',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get user_name_input {
    return Intl.message(
      'Username',
      name: 'user_name_input',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get birth_date {
    return Intl.message(
      'Date of Birth',
      name: 'birth_date',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Validate your information`
  String get validate_information {
    return Intl.message(
      'Validate your information',
      name: 'validate_information',
      desc: '',
      args: [],
    );
  }

  /// `Validate your Account`
  String get validate_account {
    return Intl.message(
      'Validate your Account',
      name: 'validate_account',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for registering! To fully enjoy all the features of our application, please verify your account. We have sent a validation email, please check your email to validate your account.`
  String get validate_description {
    return Intl.message(
      'Thank you for registering! To fully enjoy all the features of our application, please verify your account. We have sent a validation email, please check your email to validate your account.',
      name: 'validate_description',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_validation {
    return Intl.message(
      'Create Account',
      name: 'create_validation',
      desc: '',
      args: [],
    );
  }

  /// `Reserve your spot or subscribe to a subscription in the parking lot that suits you`
  String get where_to_park {
    return Intl.message(
      'Reserve your spot or subscribe to a subscription in the parking lot that suits you',
      name: 'where_to_park',
      desc: '',
      args: [],
    );
  }

  /// `Search here`
  String get search_here {
    return Intl.message(
      'Search here',
      name: 'search_here',
      desc: '',
      args: [],
    );
  }

  /// `Entrance`
  String get entrance {
    return Intl.message(
      'Entrance',
      name: 'entrance',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get leave {
    return Intl.message(
      'Exit',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Parking List`
  String get parking_list {
    return Intl.message(
      'Parking List',
      name: 'parking_list',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Not Available`
  String get not_available {
    return Intl.message(
      'Not Available',
      name: 'not_available',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Reservation`
  String get reservation {
    return Intl.message(
      'Reservation',
      name: 'reservation',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message(
      'My Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payment {
    return Intl.message(
      'Payments',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Vehicles`
  String get vehicles {
    return Intl.message(
      'Vehicles',
      name: 'vehicles',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle {
    return Intl.message(
      'Vehicle',
      name: 'vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Drivers`
  String get drivers {
    return Intl.message(
      'Drivers',
      name: 'drivers',
      desc: '',
      args: [],
    );
  }

  /// `Driver`
  String get driver {
    return Intl.message(
      'Driver',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `Claims`
  String get claims {
    return Intl.message(
      'Claims',
      name: 'claims',
      desc: '',
      args: [],
    );
  }

  /// `Claim`
  String get claim {
    return Intl.message(
      'Claim',
      name: 'claim',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Premium`
  String get premium {
    return Intl.message(
      'Premium',
      name: 'premium',
      desc: '',
      args: [],
    );
  }

  /// `High Traffic`
  String get high_traffic {
    return Intl.message(
      'High Traffic',
      name: 'high_traffic',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `validate my subscription request`
  String get confirm_subscription {
    return Intl.message(
      'validate my subscription request',
      name: 'confirm_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment_screen_title {
    return Intl.message(
      'Payment',
      name: 'payment_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get add_new_card {
    return Intl.message(
      'Add New Card',
      name: 'add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get add_card_screen_title {
    return Intl.message(
      'Add Card',
      name: 'add_card_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message(
      'Credit Card',
      name: 'credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get card_holder {
    return Intl.message(
      'Name',
      name: 'card_holder',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to add this card`
  String get confirm_message {
    return Intl.message(
      'Are you sure you want to add this card',
      name: 'confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Card added\nsuccessfully`
  String get popup_message_card {
    return Intl.message(
      'Card added\nsuccessfully',
      name: 'popup_message_card',
      desc: '',
      args: [],
    );
  }

  /// `Alert!`
  String get alert {
    return Intl.message(
      'Alert!',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this card`
  String get delete_card_message {
    return Intl.message(
      'Are you sure you want to delete this card',
      name: 'delete_card_message',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Add New Vehicle`
  String get add_new_vehicle {
    return Intl.message(
      'Add New Vehicle',
      name: 'add_new_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Add Vehicle`
  String get add_vehicle_title {
    return Intl.message(
      'Add Vehicle',
      name: 'add_vehicle_title',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get car {
    return Intl.message(
      'Car',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `Motorcycle`
  String get moto {
    return Intl.message(
      'Motorcycle',
      name: 'moto',
      desc: '',
      args: [],
    );
  }

  /// `Bicycle`
  String get bicycle {
    return Intl.message(
      'Bicycle',
      name: 'bicycle',
      desc: '',
      args: [],
    );
  }

  /// `Model`
  String get vehicle_model {
    return Intl.message(
      'Model',
      name: 'vehicle_model',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `License Plate`
  String get license_plate {
    return Intl.message(
      'License Plate',
      name: 'license_plate',
      desc: '',
      args: [],
    );
  }

  /// `Scan your license plate`
  String get scan_plate {
    return Intl.message(
      'Scan your license plate',
      name: 'scan_plate',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get blue {
    return Intl.message(
      'Blue',
      name: 'blue',
      desc: '',
      args: [],
    );
  }

  /// `Red`
  String get red {
    return Intl.message(
      'Red',
      name: 'red',
      desc: '',
      args: [],
    );
  }

  /// `Green`
  String get green {
    return Intl.message(
      'Green',
      name: 'green',
      desc: '',
      args: [],
    );
  }

  /// `Grey`
  String get grey {
    return Intl.message(
      'Grey',
      name: 'grey',
      desc: '',
      args: [],
    );
  }

  /// `White`
  String get white {
    return Intl.message(
      'White',
      name: 'white',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to add this vehicle`
  String get add_vehicle_message {
    return Intl.message(
      'Are you sure you want to add this vehicle',
      name: 'add_vehicle_message',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to edit this vehicle`
  String get edit_vehicle_message {
    return Intl.message(
      'Are you sure you want to edit this vehicle',
      name: 'edit_vehicle_message',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle added successfully`
  String get popup_message_vehicle {
    return Intl.message(
      'Vehicle added successfully',
      name: 'popup_message_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Add New Driver`
  String get add_new_driver {
    return Intl.message(
      'Add New Driver',
      name: 'add_new_driver',
      desc: '',
      args: [],
    );
  }

  /// `Add Driver`
  String get add_driver_title {
    return Intl.message(
      'Add Driver',
      name: 'add_driver_title',
      desc: '',
      args: [],
    );
  }

  /// `Name and Surname`
  String get name_surname {
    return Intl.message(
      'Name and Surname',
      name: 'name_surname',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to add this driver`
  String get confirmation_driver_message {
    return Intl.message(
      'Are you sure you want to add this driver',
      name: 'confirmation_driver_message',
      desc: '',
      args: [],
    );
  }

  /// `Driver added\nsuccessfully`
  String get popup_message_driver {
    return Intl.message(
      'Driver added\nsuccessfully',
      name: 'popup_message_driver',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this driver`
  String get alert_message_delete_driver {
    return Intl.message(
      'Are you sure you want to delete this driver',
      name: 'alert_message_delete_driver',
      desc: '',
      args: [],
    );
  }

  /// `Add a Claim`
  String get add_claim {
    return Intl.message(
      'Add a Claim',
      name: 'add_claim',
      desc: '',
      args: [],
    );
  }

  /// `Feel free to add a claim whenever you encounter issues.`
  String get add_claim_description {
    return Intl.message(
      'Feel free to add a claim whenever you encounter issues.',
      name: 'add_claim_description',
      desc: '',
      args: [],
    );
  }

  /// `Claims List`
  String get claim_list {
    return Intl.message(
      'Claims List',
      name: 'claim_list',
      desc: '',
      args: [],
    );
  }

  /// `See Details`
  String get see_details {
    return Intl.message(
      'See Details',
      name: 'see_details',
      desc: '',
      args: [],
    );
  }

  /// `Claims`
  String get claim_screen_title {
    return Intl.message(
      'Claims',
      name: 'claim_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Add a Claim`
  String get add_claim_screen_title {
    return Intl.message(
      'Add a Claim',
      name: 'add_claim_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to submit a request to us`
  String get claim_screen_want_add_claim {
    return Intl.message(
      'Do you want to submit a request to us',
      name: 'claim_screen_want_add_claim',
      desc: '',
      args: [],
    );
  }

  /// `Request Object`
  String get claim_object {
    return Intl.message(
      'Request Object',
      name: 'claim_object',
      desc: '',
      args: [],
    );
  }

  /// `Didn't find an answer?`
  String get claim_description_hint_text {
    return Intl.message(
      'Didn\'t find an answer?',
      name: 'claim_description_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Attach a File`
  String get add_attachment {
    return Intl.message(
      'Attach a File',
      name: 'add_attachment',
      desc: '',
      args: [],
    );
  }

  /// `An unlimited number of files can be uploaded. Limited to 10 MB. Allowed types: pdf png jpg.`
  String get attachment_requirements {
    return Intl.message(
      'An unlimited number of files can be uploaded. Limited to 10 MB. Allowed types: pdf png jpg.',
      name: 'attachment_requirements',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized Format`
  String get attachment_message_unauthorized_type_title {
    return Intl.message(
      'Unauthorized Format',
      name: 'attachment_message_unauthorized_type_title',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a file of type PDF, PNG, or JPG.`
  String get attachment_message_unauthorized_type_description {
    return Intl.message(
      'Please choose a file of type PDF, PNG, or JPG.',
      name: 'attachment_message_unauthorized_type_description',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `files found.`
  String get attachments_numbers {
    return Intl.message(
      'files found.',
      name: 'attachments_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Send Request`
  String get send_claim {
    return Intl.message(
      'Send Request',
      name: 'send_claim',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to confirm the request?`
  String get add_claim_message {
    return Intl.message(
      'Do you want to confirm the request?',
      name: 'add_claim_message',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been successfully sent`
  String get add_claim_success {
    return Intl.message(
      'Your request has been successfully sent',
      name: 'add_claim_success',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Zip Code`
  String get zip_code {
    return Intl.message(
      'Zip Code',
      name: 'zip_code',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to save the changes?`
  String get confirm_edit_profile_message {
    return Intl.message(
      'Do you want to save the changes?',
      name: 'confirm_edit_profile_message',
      desc: '',
      args: [],
    );
  }

  /// `Driver modified`
  String get driver_modified {
    return Intl.message(
      'Driver modified',
      name: 'driver_modified',
      desc: '',
      args: [],
    );
  }

  /// `With success`
  String get with_success {
    return Intl.message(
      'With success',
      name: 'with_success',
      desc: '',
      args: [],
    );
  }

  /// `Edit driver`
  String get edit_driver {
    return Intl.message(
      'Edit driver',
      name: 'edit_driver',
      desc: '',
      args: [],
    );
  }

  /// `Modify driver`
  String get modify_driver {
    return Intl.message(
      'Modify driver',
      name: 'modify_driver',
      desc: '',
      args: [],
    );
  }

  /// `Edit vehicle`
  String get edit_vehicle {
    return Intl.message(
      'Edit vehicle',
      name: 'edit_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle modified successfully`
  String get vehicle_modified_successfully {
    return Intl.message(
      'Vehicle modified successfully',
      name: 'vehicle_modified_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Parking Details`
  String get parking_details {
    return Intl.message(
      'Parking Details',
      name: 'parking_details',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Available Services`
  String get services {
    return Intl.message(
      'Available Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Car Rentals`
  String get rent_cars {
    return Intl.message(
      'Car Rentals',
      name: 'rent_cars',
      desc: '',
      args: [],
    );
  }

  /// `Traffic Information Screens`
  String get screens_infos {
    return Intl.message(
      'Traffic Information Screens',
      name: 'screens_infos',
      desc: '',
      args: [],
    );
  }

  /// `Equipment Instructions`
  String get instructions_for_equipment {
    return Intl.message(
      'Equipment Instructions',
      name: 'instructions_for_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Umbrella`
  String get umbrella {
    return Intl.message(
      'Umbrella',
      name: 'umbrella',
      desc: '',
      args: [],
    );
  }

  /// `Shoe Polisher`
  String get shoe_polisher {
    return Intl.message(
      'Shoe Polisher',
      name: 'shoe_polisher',
      desc: '',
      args: [],
    );
  }

  /// `Battery Starter`
  String get battery_starter {
    return Intl.message(
      'Battery Starter',
      name: 'battery_starter',
      desc: '',
      args: [],
    );
  }

  /// `Tire Inflator`
  String get tire_inflator {
    return Intl.message(
      'Tire Inflator',
      name: 'tire_inflator',
      desc: '',
      args: [],
    );
  }

  /// `Paid Electric Charging`
  String get paying_electric_charging {
    return Intl.message(
      'Paid Electric Charging',
      name: 'paying_electric_charging',
      desc: '',
      args: [],
    );
  }

  /// `Opening Hours`
  String get open_hours {
    return Intl.message(
      'Opening Hours',
      name: 'open_hours',
      desc: '',
      args: [],
    );
  }

  /// `Reception Hours`
  String get open_reception_hours {
    return Intl.message(
      'Reception Hours',
      name: 'open_reception_hours',
      desc: '',
      args: [],
    );
  }

  /// `On-site Rates`
  String get price_per_place {
    return Intl.message(
      'On-site Rates',
      name: 'price_per_place',
      desc: '',
      args: [],
    );
  }

  /// `Subscription Rates`
  String get subscription_price {
    return Intl.message(
      'Subscription Rates',
      name: 'subscription_price',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Processing fees`
  String get access_card {
    return Intl.message(
      'Processing fees',
      name: 'access_card',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get total_price {
    return Intl.message(
      'Total price',
      name: 'total_price',
      desc: '',
      args: [],
    );
  }

  /// `I accept the general terms and conditions of sale`
  String get terms_and_conditions {
    return Intl.message(
      'I accept the general terms and conditions of sale',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `I accept the internal regulations`
  String get regulations {
    return Intl.message(
      'I accept the internal regulations',
      name: 'regulations',
      desc: '',
      args: [],
    );
  }

  /// `Card delivery`
  String get card_delivery {
    return Intl.message(
      'Card delivery',
      name: 'card_delivery',
      desc: '',
      args: [],
    );
  }

  /// `By mail`
  String get by_mail {
    return Intl.message(
      'By mail',
      name: 'by_mail',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get to_book {
    return Intl.message(
      'Book',
      name: 'to_book',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Parking`
  String get reserve_parking {
    return Intl.message(
      'Reserve Parking',
      name: 'reserve_parking',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `Reservation Duration`
  String get reservation_duration {
    return Intl.message(
      'Reservation Duration',
      name: 'reservation_duration',
      desc: '',
      args: [],
    );
  }

  /// `Next Step`
  String get next_step {
    return Intl.message(
      'Next Step',
      name: 'next_step',
      desc: '',
      args: [],
    );
  }

  /// `Previous Step`
  String get previous_step {
    return Intl.message(
      'Previous Step',
      name: 'previous_step',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Choose Vehicle`
  String get choose_vehicle {
    return Intl.message(
      'Choose Vehicle',
      name: 'choose_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Choose Driver`
  String get choose_driver {
    return Intl.message(
      'Choose Driver',
      name: 'choose_driver',
      desc: '',
      args: [],
    );
  }

  /// `Choose Payment Method`
  String get choose_payment_method {
    return Intl.message(
      'Choose Payment Method',
      name: 'choose_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Edit language`
  String get language_parameters {
    return Intl.message(
      'Edit language',
      name: 'language_parameters',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Monthly price`
  String get monthly_price {
    return Intl.message(
      'Monthly price',
      name: 'monthly_price',
      desc: '',
      args: [],
    );
  }

  /// `Price to pay`
  String get price_pay {
    return Intl.message(
      'Price to pay',
      name: 'price_pay',
      desc: '',
      args: [],
    );
  }

  /// `A first payment of`
  String get confirmation_description_one {
    return Intl.message(
      'A first payment of',
      name: 'confirmation_description_one',
      desc: '',
      args: [],
    );
  }

  /// `(VAT included) is requested for the period`
  String get confirmation_description_two {
    return Intl.message(
      '(VAT included) is requested for the period',
      name: 'confirmation_description_two',
      desc: '',
      args: [],
    );
  }

  /// `Then, an automatic debit of`
  String get confirmation_description_three {
    return Intl.message(
      'Then, an automatic debit of',
      name: 'confirmation_description_three',
      desc: '',
      args: [],
    );
  }

  /// `on the 1st day of each month.`
  String get confirmation_description_four {
    return Intl.message(
      'on the 1st day of each month.',
      name: 'confirmation_description_four',
      desc: '',
      args: [],
    );
  }

  /// `Effia does not store any bank details.\n All details are securely stored at Atos Worldline,\n our PCI certified partner.`
  String get payment_wordline_message {
    return Intl.message(
      'Effia does not store any bank details.\n All details are securely stored at Atos Worldline,\n our PCI certified partner.',
      name: 'payment_wordline_message',
      desc: '',
      args: [],
    );
  }

  /// `settings`
  String get settings_screen_title {
    return Intl.message(
      'settings',
      name: 'settings_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notification {
    return Intl.message(
      'Notifications',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `security`
  String get security {
    return Intl.message(
      'security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `languages`
  String get languages {
    return Intl.message(
      'languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `terms and conditions`
  String get condition_terms {
    return Intl.message(
      'terms and conditions',
      name: 'condition_terms',
      desc: '',
      args: [],
    );
  }

  /// `How to use?`
  String get how_to_use {
    return Intl.message(
      'How to use?',
      name: 'how_to_use',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get log_out {
    return Intl.message(
      'Logout',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `the Vehicle, the driver, and the credit card are necessary to reserve in a parking lot`
  String get attention_message {
    return Intl.message(
      'the Vehicle, the driver, and the credit card are necessary to reserve in a parking lot',
      name: 'attention_message',
      desc: '',
      args: [],
    );
  }

  /// `Safety instructions`
  String get safety_instructions {
    return Intl.message(
      'Safety instructions',
      name: 'safety_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuee {
    return Intl.message(
      'Continue',
      name: 'continuee',
      desc: '',
      args: [],
    );
  }

  /// `My reservations`
  String get my_reservations {
    return Intl.message(
      'My reservations',
      name: 'my_reservations',
      desc: '',
      args: [],
    );
  }

  /// `No reservations at the moment`
  String get no_reservations_at_the_moment {
    return Intl.message(
      'No reservations at the moment',
      name: 'no_reservations_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `No subscription at the moment`
  String get no_subscription_at_the_moment {
    return Intl.message(
      'No subscription at the moment',
      name: 'no_subscription_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `Reserve a spot`
  String get reserve_a_parking_space {
    return Intl.message(
      'Reserve a spot',
      name: 'reserve_a_parking_space',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get mark_as_read {
    return Intl.message(
      'Mark as read',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `No notifications at the moment`
  String get no_notifications_at_the_moment {
    return Intl.message(
      'No notifications at the moment',
      name: 'no_notifications_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `View the timer`
  String get view_the_timer {
    return Intl.message(
      'View the timer',
      name: 'view_the_timer',
      desc: '',
      args: [],
    );
  }

  /// `View ticket`
  String get view_ticket {
    return Intl.message(
      'View ticket',
      name: 'view_ticket',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Subscription number`
  String get subscription_number {
    return Intl.message(
      'Subscription number',
      name: 'subscription_number',
      desc: '',
      args: [],
    );
  }

  /// `Entry date`
  String get entry_date {
    return Intl.message(
      'Entry date',
      name: 'entry_date',
      desc: '',
      args: [],
    );
  }

  /// `Driver name`
  String get driver_name {
    return Intl.message(
      'Driver name',
      name: 'driver_name',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle registration number`
  String get vehicle_registration_number {
    return Intl.message(
      'Vehicle registration number',
      name: 'vehicle_registration_number',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Exit date`
  String get exit_date {
    return Intl.message(
      'Exit date',
      name: 'exit_date',
      desc: '',
      args: [],
    );
  }

  /// `Reservation ticket`
  String get reservation_ticket {
    return Intl.message(
      'Reservation ticket',
      name: 'reservation_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe to a subscription`
  String get subscribe_to_a_parking {
    return Intl.message(
      'Subscribe to a subscription',
      name: 'subscribe_to_a_parking',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a password`
  String get please_enter_a_password {
    return Intl.message(
      'Please enter a password',
      name: 'please_enter_a_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long and contain at least one letter, one number, and one special character`
  String get password_must_be_at_least {
    return Intl.message(
      'Password must be at least 8 characters long and contain at least one letter, one number, and one special character',
      name: 'password_must_be_at_least',
      desc: '',
      args: [],
    );
  }

  /// `Account verification`
  String get account_verification {
    return Intl.message(
      'Account verification',
      name: 'account_verification',
      desc: '',
      args: [],
    );
  }

  /// `This account is not verified, please check your email, `
  String get a_verification_email_has_been_sent_to_your_email {
    return Intl.message(
      'This account is not verified, please check your email, ',
      name: 'a_verification_email_has_been_sent_to_your_email',
      desc: '',
      args: [],
    );
  }

  /// `or resend the verification email here.`
  String get resend_email {
    return Intl.message(
      'or resend the verification email here.',
      name: 'resend_email',
      desc: '',
      args: [],
    );
  }

  /// `Verify your email or password`
  String get verify_your_email_or_password {
    return Intl.message(
      'Verify your email or password',
      name: 'verify_your_email_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Please try again.`
  String get please_try_again {
    return Intl.message(
      'Please try again.',
      name: 'please_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm the password`
  String get please_confirm_the_password {
    return Intl.message(
      'Please confirm the password',
      name: 'please_confirm_the_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_do_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_do_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Congratulation`
  String get congratulations {
    return Intl.message(
      'Congratulation',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email address`
  String get please_verify_your_email_address {
    return Intl.message(
      'Please verify your email address',
      name: 'please_verify_your_email_address',
      desc: '',
      args: [],
    );
  }

  /// `A verification link has been sent`
  String get a_verification_link_has_been_sent {
    return Intl.message(
      'A verification link has been sent',
      name: 'a_verification_link_has_been_sent',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email address. \nA verification link has been sent.`
  String get verify_your_email {
    return Intl.message(
      'Please verify your email address. \nA verification link has been sent.',
      name: 'verify_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Oops!`
  String get oops {
    return Intl.message(
      'Oops!',
      name: 'oops',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get are_you_sure_you_want_to_logout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'are_you_sure_you_want_to_logout',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle added successfully`
  String get vehicle_added_successfully {
    return Intl.message(
      'Vehicle added successfully',
      name: 'vehicle_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle updated successfully`
  String get vehicle_updated_successfully {
    return Intl.message(
      'Vehicle updated successfully',
      name: 'vehicle_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been sent successfully`
  String get your_request_has_been_sent_successfully {
    return Intl.message(
      'Your request has been sent successfully',
      name: 'your_request_has_been_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Subscription has been successfully made`
  String get subscription_has_been_successfully_made {
    return Intl.message(
      'Subscription has been successfully made',
      name: 'subscription_has_been_successfully_made',
      desc: '',
      args: [],
    );
  }

  /// `Reservation has been successfully made`
  String get reservation_has_been_successfully_made {
    return Intl.message(
      'Reservation has been successfully made',
      name: 'reservation_has_been_successfully_made',
      desc: '',
      args: [],
    );
  }

  /// `No services available at the moment!`
  String get no_services_available_at_the_moment {
    return Intl.message(
      'No services available at the moment!',
      name: 'no_services_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `List of settings`
  String get list_of_settings {
    return Intl.message(
      'List of settings',
      name: 'list_of_settings',
      desc: '',
      args: [],
    );
  }

  /// `Account settings`
  String get account_settings {
    return Intl.message(
      'Account settings',
      name: 'account_settings',
      desc: '',
      args: [],
    );
  }

  /// `Deactivate your account`
  String get deactivate_your_account {
    return Intl.message(
      'Deactivate your account',
      name: 'deactivate_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Why are you archiving your profile?`
  String get why_are_you_archiving_your_profile {
    return Intl.message(
      'Why are you archiving your profile?',
      name: 'why_are_you_archiving_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `I no longer use this service.`
  String get i_no_longer_use_this_service {
    return Intl.message(
      'I no longer use this service.',
      name: 'i_no_longer_use_this_service',
      desc: '',
      args: [],
    );
  }

  /// `Privacy concerns.`
  String get privacy_concerns {
    return Intl.message(
      'Privacy concerns.',
      name: 'privacy_concerns',
      desc: '',
      args: [],
    );
  }

  /// `Technical issues.`
  String get technical_issues {
    return Intl.message(
      'Technical issues.',
      name: 'technical_issues',
      desc: '',
      args: [],
    );
  }

  /// `Other (please specify)`
  String get other_please_specify {
    return Intl.message(
      'Other (please specify)',
      name: 'other_please_specify',
      desc: '',
      args: [],
    );
  }

  /// `Driver deleted successfully`
  String get driver_deleted_successfully {
    return Intl.message(
      'Driver deleted successfully',
      name: 'driver_deleted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this driver?`
  String get are_you_sure_you_want_to_delete_this_driver {
    return Intl.message(
      'Are you sure you want to delete this driver?',
      name: 'are_you_sure_you_want_to_delete_this_driver',
      desc: '',
      args: [],
    );
  }

  /// `No vehicles available at the moment`
  String get no_vehicles_available_at_the_moment {
    return Intl.message(
      'No vehicles available at the moment',
      name: 'no_vehicles_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this vehicle?`
  String get are_you_sure_you_want_to_delete_this_vehicle {
    return Intl.message(
      'Are you sure you want to delete this vehicle?',
      name: 'are_you_sure_you_want_to_delete_this_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle removed successfully`
  String get vehicle_removed_successfully {
    return Intl.message(
      'Vehicle removed successfully',
      name: 'vehicle_removed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `No drivers available at the moment`
  String get no_drivers_available_at_the_moment {
    return Intl.message(
      'No drivers available at the moment',
      name: 'no_drivers_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `General informations`
  String get general_information {
    return Intl.message(
      'General informations',
      name: 'general_information',
      desc: '',
      args: [],
    );
  }

  /// `Archive account`
  String get archive_account {
    return Intl.message(
      'Archive account',
      name: 'archive_account',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get name {
    return Intl.message(
      'Last name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully`
  String get profile_updated_successfully {
    return Intl.message(
      'Profile updated successfully',
      name: 'profile_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a zip code`
  String get please_enter_a_zip_code {
    return Intl.message(
      'Please enter a zip code',
      name: 'please_enter_a_zip_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid zip code`
  String get please_enter_a_valid_zip_code {
    return Intl.message(
      'Please enter a valid zip code',
      name: 'please_enter_a_valid_zip_code',
      desc: '',
      args: [],
    );
  }

  /// `Password and authentication`
  String get password_and_authentication {
    return Intl.message(
      'Password and authentication',
      name: 'password_and_authentication',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get new_password {
    return Intl.message(
      'New password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Old password`
  String get old_password {
    return Intl.message(
      'Old password',
      name: 'old_password',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get reset_your_password_here {
    return Intl.message(
      'Reset your password',
      name: 'reset_your_password_here',
      desc: '',
      args: [],
    );
  }

  /// `Claim Details`
  String get claim_details {
    return Intl.message(
      'Claim Details',
      name: 'claim_details',
      desc: '',
      args: [],
    );
  }

  /// `Created on:`
  String get created_on {
    return Intl.message(
      'Created on:',
      name: 'created_on',
      desc: '',
      args: [],
    );
  }

  /// `Subject of the Claim:`
  String get subject_of_the_claim {
    return Intl.message(
      'Subject of the Claim:',
      name: 'subject_of_the_claim',
      desc: '',
      args: [],
    );
  }

  /// `attachment:`
  String get attachment {
    return Intl.message(
      'attachment:',
      name: 'attachment',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel this claim?`
  String get confirmCancelClaim {
    return Intl.message(
      'Are you sure you want to cancel this claim?',
      name: 'confirmCancelClaim',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get active {
    return Intl.message(
      'In progress',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get expired {
    return Intl.message(
      'Completed',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get upcomming {
    return Intl.message(
      'Pending',
      name: 'upcomming',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Being processed`
  String get pending_file {
    return Intl.message(
      'Being processed',
      name: 'pending_file',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Commitment`
  String get subscribe_for_at_least {
    return Intl.message(
      'Commitment',
      name: 'subscribe_for_at_least',
      desc: '',
      args: [],
    );
  }

  /// `months minimum`
  String get months_minimum {
    return Intl.message(
      'months minimum',
      name: 'months_minimum',
      desc: '',
      args: [],
    );
  }

  /// `Please note that`
  String get please_note_that {
    return Intl.message(
      'Please note that',
      name: 'please_note_that',
      desc: '',
      args: [],
    );
  }

  /// `Processing fees will be added.`
  String get card_fees_will_be_added {
    return Intl.message(
      'Processing fees will be added.',
      name: 'card_fees_will_be_added',
      desc: '',
      args: [],
    );
  }

  /// `Driver added \n successfully`
  String get add_conducteur_message {
    return Intl.message(
      'Driver added \n successfully',
      name: 'add_conducteur_message',
      desc: '',
      args: [],
    );
  }

  /// `Scan a new document`
  String get scan_a_new_document {
    return Intl.message(
      'Scan a new document',
      name: 'scan_a_new_document',
      desc: '',
      args: [],
    );
  }

  /// `Choose an existing document`
  String get choose_an_existing_document {
    return Intl.message(
      'Choose an existing document',
      name: 'choose_an_existing_document',
      desc: '',
      args: [],
    );
  }

  /// `No cards available at the moment`
  String get no_cards_available_at_the_moment {
    return Intl.message(
      'No cards available at the moment',
      name: 'no_cards_available_at_the_moment',
      desc: '',
      args: [],
    );
  }

  /// `Choose an amount`
  String get choose_an_amount {
    return Intl.message(
      'Choose an amount',
      name: 'choose_an_amount',
      desc: '',
      args: [],
    );
  }

  /// `Please note that a $20 card fee \nwill be added`
  String get please_note_a_20_card_fee_will_be_added {
    return Intl.message(
      'Please note that a \$20 card fee \nwill be added',
      name: 'please_note_a_20_card_fee_will_be_added',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a proof document?`
  String get do_you_have_a_proof_document {
    return Intl.message(
      'Do you have a proof document?',
      name: 'do_you_have_a_proof_document',
      desc: '',
      args: [],
    );
  }

  /// `Student card, hospital document...`
  String get student_card_hospital_document {
    return Intl.message(
      'Student card, hospital document...',
      name: 'student_card_hospital_document',
      desc: '',
      args: [],
    );
  }

  /// `Choose the duration`
  String get choose_the_duration {
    return Intl.message(
      'Choose the duration',
      name: 'choose_the_duration',
      desc: '',
      args: [],
    );
  }

  /// `You have the option to choose multiple dates to schedule your reservations.`
  String get choose_multiple_dates_to_schedule_your_reservations {
    return Intl.message(
      'You have the option to choose multiple dates to schedule your reservations.',
      name: 'choose_multiple_dates_to_schedule_your_reservations',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Wrong File Size`
  String get wrong_file_size {
    return Intl.message(
      'Wrong File Size',
      name: 'wrong_file_size',
      desc: '',
      args: [],
    );
  }

  /// `The total size of the files exceeds the 10 MB limit.`
  String get wrong_file_size_description {
    return Intl.message(
      'The total size of the files exceeds the 10 MB limit.',
      name: 'wrong_file_size_description',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized Format`
  String get unauthorized_format {
    return Intl.message(
      'Unauthorized Format',
      name: 'unauthorized_format',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a file of type PDF, PNG, or JPG.`
  String get unauthorized_format_description {
    return Intl.message(
      'Please choose a file of type PDF, PNG, or JPG.',
      name: 'unauthorized_format_description',
      desc: '',
      args: [],
    );
  }

  /// `In case of fire,`
  String get in_case_of_fire {
    return Intl.message(
      'In case of fire,',
      name: 'in_case_of_fire',
      desc: '',
      args: [],
    );
  }

  /// `Strive to fight the fire using the closest means.`
  String get strive_to_fight_the_fire_using_the_closest_means {
    return Intl.message(
      'Strive to fight the fire using the closest means.',
      name: 'strive_to_fight_the_fire_using_the_closest_means',
      desc: '',
      args: [],
    );
  }

  /// `Attack the base of the fire using extinguishers.`
  String get attack_the_base_of_the_fire_using_extinguishers {
    return Intl.message(
      'Attack the base of the fire using extinguishers.',
      name: 'attack_the_base_of_the_fire_using_extinguishers',
      desc: '',
      args: [],
    );
  }

  /// `Do not use water on fuel or oil fires.`
  String get do_not_use_water_on_fuel_or_oil_fires {
    return Intl.message(
      'Do not use water on fuel or oil fires.',
      name: 'do_not_use_water_on_fuel_or_oil_fires',
      desc: '',
      args: [],
    );
  }

  /// `In heat and smoke, get down. Fresh air is near the floor.`
  String get in_heat_and_smoke_get_down_fresh_air_is_near_the_floor {
    return Intl.message(
      'In heat and smoke, get down. Fresh air is near the floor.',
      name: 'in_heat_and_smoke_get_down_fresh_air_is_near_the_floor',
      desc: '',
      args: [],
    );
  }

  /// `To evacuate safely,`
  String get evacuate_safely {
    return Intl.message(
      'To evacuate safely,',
      name: 'evacuate_safely',
      desc: '',
      args: [],
    );
  }

  /// `Stay calm and do not panic.`
  String get stay_calm_and_do_not_panic {
    return Intl.message(
      'Stay calm and do not panic.',
      name: 'stay_calm_and_do_not_panic',
      desc: '',
      args: [],
    );
  }

  /// `Head towards the nearest emergency exits.`
  String get head_towards_the_nearest_emergency_exits {
    return Intl.message(
      'Head towards the nearest emergency exits.',
      name: 'head_towards_the_nearest_emergency_exits',
      desc: '',
      args: [],
    );
  }

  /// `Use stairs for safe evacuation.`
  String get use_stairs_for_safe_evacuation {
    return Intl.message(
      'Use stairs for safe evacuation.',
      name: 'use_stairs_for_safe_evacuation',
      desc: '',
      args: [],
    );
  }

  /// `Do not block emergency exits and ensure they remain accessible for all.`
  String
      get do_not_block_emergency_exits_ensure_they_remain_accessible_for_all {
    return Intl.message(
      'Do not block emergency exits and ensure they remain accessible for all.',
      name:
          'do_not_block_emergency_exits_ensure_they_remain_accessible_for_all',
      desc: '',
      args: [],
    );
  }

  /// `Once evacuated, head to a predefined assembly point so that rescue teams can locate you.`
  String
      get once_evacuated_head_to_a_predefined_assembly_point_so_that_rescue_teams_can_locate_you {
    return Intl.message(
      'Once evacuated, head to a predefined assembly point so that rescue teams can locate you.',
      name:
          'once_evacuated_head_to_a_predefined_assembly_point_so_that_rescue_teams_can_locate_you',
      desc: '',
      args: [],
    );
  }

  /// `Instructions and recommendations`
  String get instructions_and_recommendations {
    return Intl.message(
      'Instructions and recommendations',
      name: 'instructions_and_recommendations',
      desc: '',
      args: [],
    );
  }

  /// `IT IS PROHIBITED`
  String get it_is_prohibited {
    return Intl.message(
      'IT IS PROHIBITED',
      name: 'it_is_prohibited',
      desc: '',
      args: [],
    );
  }

  /// `Do not store combustible materials in parking areas.`
  String get do_not_store_combustible_materials_in_parking_areas {
    return Intl.message(
      'Do not store combustible materials in parking areas.',
      name: 'do_not_store_combustible_materials_in_parking_areas',
      desc: '',
      args: [],
    );
  }

  /// `Do not keep flammable, explosive materials inside vehicles.`
  String get do_not_keep_flammable_explosive_materials_inside_vehicles {
    return Intl.message(
      'Do not keep flammable, explosive materials inside vehicles.',
      name: 'do_not_keep_flammable_explosive_materials_inside_vehicles',
      desc: '',
      args: [],
    );
  }

  /// `Do not add fuel to vehicles.`
  String get do_not_add_fuel_to_vehicles {
    return Intl.message(
      'Do not add fuel to vehicles.',
      name: 'do_not_add_fuel_to_vehicles',
      desc: '',
      args: [],
    );
  }

  /// `Do not smoke or use open flames.`
  String get do_not_smoke_or_use_open_flames {
    return Intl.message(
      'Do not smoke or use open flames.',
      name: 'do_not_smoke_or_use_open_flames',
      desc: '',
      args: [],
    );
  }

  /// `Do not park vehicles outside designated areas.`
  String get do_not_park_vehicles_outside_designated_areas {
    return Intl.message(
      'Do not park vehicles outside designated areas.',
      name: 'do_not_park_vehicles_outside_designated_areas',
      desc: '',
      args: [],
    );
  }

  /// `Do not leave a vehicle engine running during an extended stop.`
  String get do_not_leave_a_vehicle_engine_running_during_an_extended_stop {
    return Intl.message(
      'Do not leave a vehicle engine running during an extended stop.',
      name: 'do_not_leave_a_vehicle_engine_running_during_an_extended_stop',
      desc: '',
      args: [],
    );
  }

  /// `In the interest of all,`
  String get in_the_interest_of_all {
    return Intl.message(
      'In the interest of all,',
      name: 'in_the_interest_of_all',
      desc: '',
      args: [],
    );
  }

  /// `Do not use horns inside the parking lot.`
  String get do_not_use_horns_inside_the_parking_lot {
    return Intl.message(
      'Do not use horns inside the parking lot.',
      name: 'do_not_use_horns_inside_the_parking_lot',
      desc: '',
      args: [],
    );
  }

  /// `Recognize emergency exits and evacuation routes. Identify the location of fire fighting equipment.`
  String
      get recognize_emergency_exits_and_evacuation_routes_identify_the_location_of_fire_fighting_equipment {
    return Intl.message(
      'Recognize emergency exits and evacuation routes. Identify the location of fire fighting equipment.',
      name:
          'recognize_emergency_exits_and_evacuation_routes_identify_the_location_of_fire_fighting_equipment',
      desc: '',
      args: [],
    );
  }

  /// `Do not damage the emergency equipment provided for your use.`
  String get do_not_damage_the_emergency_equipment_provided_for_your_use {
    return Intl.message(
      'Do not damage the emergency equipment provided for your use.',
      name: 'do_not_damage_the_emergency_equipment_provided_for_your_use',
      desc: '',
      args: [],
    );
  }

  /// `Do not park your vehicle in front of fire hydrants or fire hose reels.`
  String
      get do_not_park_your_vehicle_in_front_of_fire_hydrants_or_fire_hose_reels {
    return Intl.message(
      'Do not park your vehicle in front of fire hydrants or fire hose reels.',
      name:
          'do_not_park_your_vehicle_in_front_of_fire_hydrants_or_fire_hose_reels',
      desc: '',
      args: [],
    );
  }

  /// `Do not park your vehicle in reserved emergency lanes.`
  String get do_not_park_your_vehicle_in_reserved_emergency_lanes {
    return Intl.message(
      'Do not park your vehicle in reserved emergency lanes.',
      name: 'do_not_park_your_vehicle_in_reserved_emergency_lanes',
      desc: '',
      args: [],
    );
  }

  /// `Do not take risks.`
  String get do_not_take_risks {
    return Intl.message(
      'Do not take risks.',
      name: 'do_not_take_risks',
      desc: '',
      args: [],
    );
  }

  /// `Terminate`
  String get terminate {
    return Intl.message(
      'Terminate',
      name: 'terminate',
      desc: '',
      args: [],
    );
  }

  /// `No subscriptions available at the moment. Thank you for your understanding.`
  String get no_subscriptions_available {
    return Intl.message(
      'No subscriptions available at the moment. Thank you for your understanding.',
      name: 'no_subscriptions_available',
      desc: '',
      args: [],
    );
  }

  /// `No reservation available at the moment. Thank you for your understanding.`
  String get no_reservation_available {
    return Intl.message(
      'No reservation available at the moment. Thank you for your understanding.',
      name: 'no_reservation_available',
      desc: '',
      args: [],
    );
  }

  /// `Flat rate subscription`
  String get flat_rate_subscription {
    return Intl.message(
      'Flat rate subscription',
      name: 'flat_rate_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Temporary subscription`
  String get temporary_subscription {
    return Intl.message(
      'Temporary subscription',
      name: 'temporary_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Need help?`
  String get need_help {
    return Intl.message(
      'Need help?',
      name: 'need_help',
      desc: '',
      args: [],
    );
  }

  /// `Submit a claim`
  String get submit_claim {
    return Intl.message(
      'Submit a claim',
      name: 'submit_claim',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a category`
  String get choose_category {
    return Intl.message(
      'Please choose a category',
      name: 'choose_category',
      desc: '',
      args: [],
    );
  }

  /// `Please choose the parking name`
  String get choose_parking_name {
    return Intl.message(
      'Please choose the parking name',
      name: 'choose_parking_name',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a question?`
  String get have_question {
    return Intl.message(
      'Do you have a question?',
      name: 'have_question',
      desc: '',
      args: [],
    );
  }

  /// `We are here to help!`
  String get we_are_here_to_help {
    return Intl.message(
      'We are here to help!',
      name: 'we_are_here_to_help',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to attach a file?`
  String get attach_file {
    return Intl.message(
      'Would you like to attach a file?',
      name: 'attach_file',
      desc: '',
      args: [],
    );
  }

  /// `Attach a document:`
  String get attach_a_document {
    return Intl.message(
      'Attach a document:',
      name: 'attach_a_document',
      desc: '',
      args: [],
    );
  }

  /// `Add a new claim`
  String get add_a_new_claim {
    return Intl.message(
      'Add a new claim',
      name: 'add_a_new_claim',
      desc: '',
      args: [],
    );
  }

  /// `You can transfer an unlimited number of files in this field, with a total size limit of 10 MB for all files. The allowed file types are: pdf, png, jpg, and jpeg.`
  String get file_upload_info {
    return Intl.message(
      'You can transfer an unlimited number of files in this field, with a total size limit of 10 MB for all files. The allowed file types are: pdf, png, jpg, and jpeg.',
      name: 'file_upload_info',
      desc: '',
      args: [],
    );
  }

  /// `General Options`
  String get general_options {
    return Intl.message(
      'General Options',
      name: 'general_options',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a model`
  String get please_choose_a_model {
    return Intl.message(
      'Please choose a model',
      name: 'please_choose_a_model',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during scanning`
  String get an_error_occurred_during_scanning {
    return Intl.message(
      'An error occurred during scanning',
      name: 'an_error_occurred_during_scanning',
      desc: '',
      args: [],
    );
  }

  /// `Scan your license plate`
  String get scan_your_license_plate {
    return Intl.message(
      'Scan your license plate',
      name: 'scan_your_license_plate',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the required field`
  String get please_fill_in_the_required_field {
    return Intl.message(
      'Please fill in the required field',
      name: 'please_fill_in_the_required_field',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a phone number`
  String get please_enter_a_phone_number {
    return Intl.message(
      'Please enter a phone number',
      name: 'please_enter_a_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get please_enter_a_valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'please_enter_a_valid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email address`
  String get please_enter_an_email_address {
    return Intl.message(
      'Please enter an email address',
      name: 'please_enter_an_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get please_enter_a_valid_email_address {
    return Intl.message(
      'Please enter a valid email address',
      name: 'please_enter_a_valid_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a first and last name`
  String get please_enter_a_first_and_last_name {
    return Intl.message(
      'Please enter a first and last name',
      name: 'please_enter_a_first_and_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the first name`
  String get please_enter_a_first_name {
    return Intl.message(
      'Please enter the first name',
      name: 'please_enter_a_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the last name`
  String get please_enter_a_last_name {
    return Intl.message(
      'Please enter the last name',
      name: 'please_enter_a_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Name can only contain alphabetic characters`
  String get name_can_only_contain_alphabetic_characters {
    return Intl.message(
      'Name can only contain alphabetic characters',
      name: 'name_can_only_contain_alphabetic_characters',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning {
    return Intl.message(
      'Warning',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred, please try again later`
  String get an_error_occurred_please_try_again_later {
    return Intl.message(
      'An error occurred, please try again later',
      name: 'an_error_occurred_please_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `Parking Subscription`
  String get parking_subscription {
    return Intl.message(
      'Parking Subscription',
      name: 'parking_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `PDF preview`
  String get pdf_preview {
    return Intl.message(
      'PDF preview',
      name: 'pdf_preview',
      desc: '',
      args: [],
    );
  }

  /// `Invoice history`
  String get invoice_history {
    return Intl.message(
      'Invoice history',
      name: 'invoice_history',
      desc: '',
      args: [],
    );
  }

  /// `View all invoices`
  String get view_all_invoices {
    return Intl.message(
      'View all invoices',
      name: 'view_all_invoices',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get invoice {
    return Intl.message(
      'Invoice',
      name: 'invoice',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this account?`
  String get are_you_sure_you_want_to_delete_this_account {
    return Intl.message(
      'Are you sure you want to delete this account?',
      name: 'are_you_sure_you_want_to_delete_this_account',
      desc: '',
      args: [],
    );
  }

  /// `Entry time`
  String get entry_time {
    return Intl.message(
      'Entry time',
      name: 'entry_time',
      desc: '',
      args: [],
    );
  }

  /// `Exit time`
  String get exit_time {
    return Intl.message(
      'Exit time',
      name: 'exit_time',
      desc: '',
      args: [],
    );
  }

  /// `Payment status`
  String get payment_status {
    return Intl.message(
      'Payment status',
      name: 'payment_status',
      desc: '',
      args: [],
    );
  }

  /// `Subscription status`
  String get subscription_status {
    return Intl.message(
      'Subscription status',
      name: 'subscription_status',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get paid {
    return Intl.message(
      'Paid',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get in_progress {
    return Intl.message(
      'In progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Subscription card`
  String get subscription_card {
    return Intl.message(
      'Subscription card',
      name: 'subscription_card',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get card_number {
    return Intl.message(
      'Card number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder name`
  String get cardholder_name {
    return Intl.message(
      'Cardholder name',
      name: 'cardholder_name',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get documents {
    return Intl.message(
      'Documents',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Document status`
  String get document_status {
    return Intl.message(
      'Document status',
      name: 'document_status',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `View all documents`
  String get view_all_documents {
    return Intl.message(
      'View all documents',
      name: 'view_all_documents',
      desc: '',
      args: [],
    );
  }

  /// `Document list`
  String get document_list {
    return Intl.message(
      'Document list',
      name: 'document_list',
      desc: '',
      args: [],
    );
  }

  /// `Abc@example.co`
  String get email_exemple {
    return Intl.message(
      'Abc@example.co',
      name: 'email_exemple',
      desc: '',
      args: [],
    );
  }

  /// `********`
  String get password_exemple {
    return Intl.message(
      '********',
      name: 'password_exemple',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address you use to log in to the Effia.be website.`
  String get forget_password_description {
    return Intl.message(
      'Enter the email address you use to log in to the Effia.be website.',
      name: 'forget_password_description',
      desc: '',
      args: [],
    );
  }

  /// `An email will be sent to reset your password.`
  String get forget_password_description_two {
    return Intl.message(
      'An email will be sent to reset your password.',
      name: 'forget_password_description_two',
      desc: '',
      args: [],
    );
  }

  /// `Please choose the gender`
  String get please_choose_gender {
    return Intl.message(
      'Please choose the gender',
      name: 'please_choose_gender',
      desc: '',
      args: [],
    );
  }

  /// `Please choose the birthdate`
  String get please_choose_birthdate {
    return Intl.message(
      'Please choose the birthdate',
      name: 'please_choose_birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the address`
  String get please_fill_in_address {
    return Intl.message(
      'Please fill in the address',
      name: 'please_fill_in_address',
      desc: '',
      args: [],
    );
  }

  /// `Your code has been sent to `
  String get six_digit_code_sent {
    return Intl.message(
      'Your code has been sent to ',
      name: 'six_digit_code_sent',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6-digit code:*`
  String get enter_six_digit_code {
    return Intl.message(
      'Enter the 6-digit code:*',
      name: 'enter_six_digit_code',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get reset_your_password {
    return Intl.message(
      'Reset your password',
      name: 'reset_your_password',
      desc: '',
      args: [],
    );
  }

  /// `This code will expire in 10 minutes.`
  String get this_code_will_expire_in_10_minutes {
    return Intl.message(
      'This code will expire in 10 minutes.',
      name: 'this_code_will_expire_in_10_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been reset successfully.`
  String get your_password_has_been_reset_successfully {
    return Intl.message(
      'Your password has been reset successfully.',
      name: 'your_password_has_been_reset_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the city`
  String get please_fill_in_the_city {
    return Intl.message(
      'Please fill in the city',
      name: 'please_fill_in_the_city',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the country`
  String get please_fill_in_the_country {
    return Intl.message(
      'Please fill in the country',
      name: 'please_fill_in_the_country',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get show_less {
    return Intl.message(
      'Show less',
      name: 'show_less',
      desc: '',
      args: [],
    );
  }

  /// `Show more`
  String get show_more {
    return Intl.message(
      'Show more',
      name: 'show_more',
      desc: '',
      args: [],
    );
  }

  /// `Places`
  String get places {
    return Intl.message(
      'Places',
      name: 'places',
      desc: '',
      args: [],
    );
  }

  /// `Choose the file to upload JPG, PNG or PDF`
  String get choose_file_to_upload {
    return Intl.message(
      'Choose the file to upload JPG, PNG or PDF',
      name: 'choose_file_to_upload',
      desc: '',
      args: [],
    );
  }

  /// `Document name:`
  String get document_name {
    return Intl.message(
      'Document name:',
      name: 'document_name',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Reservation status`
  String get statue_de_reservation {
    return Intl.message(
      'Reservation status',
      name: 'statue_de_reservation',
      desc: '',
      args: [],
    );
  }

  /// `Driver email`
  String get email_conducteur {
    return Intl.message(
      'Driver email',
      name: 'email_conducteur',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `parking`
  String get parking {
    return Intl.message(
      'parking',
      name: 'parking',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'nl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
