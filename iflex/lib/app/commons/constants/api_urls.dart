class ApiUrls{
  static String baseUrl = "http://36.255.71.201:7998";

  static String LOGIN = '$baseUrl/api/token/';   //Post
  static String REFRESH_TOKEN = '$baseUrl/api/token/refresh/';   //Post
  static String LOGOUT= '$baseUrl/api/logout/';    //Post
  static String REGISTRATION = '$baseUrl/flexi/api/users/';   //Post

  static String TOP_UP_REQUEST = '$baseUrl/flexi/api/requests/';  //POST
  static String TOP_UP_REQUEST_HISTORY = '$baseUrl/flexi/api/history/';  // Get
  static String PROFILE = '$baseUrl/flexi/api/users/update/';    //GET, PUT, PATCH,
  static String FAVOURITE_CONTACT='$baseUrl/flexi/api/users/contact/';   // GET, PUT, PATCH, DELETE,


}