class Endpoints {
  //AUTH API
  static const String signup = 'auth/signup';
  static const String verifyOtp = 'otp/verify';
  static const String verifyPasswordOtp = 'auth/verify_password_otp';
  static const String resendOtp = 'otp/resend';
  static const String login = 'auth/login';
  static const String forgotPassword = 'auth/forgot-password';
  static const String resetPassword = 'auth/reset-password';
  static const String verifyForgetPassword = 'auth/verify-reset-otp';
  static const String socialLogin = "auth/oauth/login";

  //HEALTH API
  static const String healthRecord = 'health-records/track';

  // NUTRITION TRACKER
  static const String saveNutritionHabbit = "nutrition/save-user-nutrition";
  static const String getMeal = "nutrition/meals";
  static const String getFavouriteMeal = "nutrition/favorite-meals";
  static const String creatMeal = "nutrition/create-meal";

  // FITNESS TRACKER
  static const String saveFitnessHabbit = "fitness/set-fitness-habit";
  static const String setFitness = 'fitness/set-workout-plan';
  static const String getAllExercise = 'fitness/allExercises';
  static const String getRetrieveExercise = 'fitness/fitness-habit';

// USER
  static const String userRecords = "users/records/status";
  static const String setupProfile = "users/setup-profile";

  // Test Data 
   static const String testUrl = "users/records/status";

}
