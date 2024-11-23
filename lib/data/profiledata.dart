
class User {
  final String username;
  final String email;
  final String alamat;
  final String password;

  User({
    required this.username,
    required this.email,
    required this.alamat,
    required this.password,
  });
}

class ProfileData {
  static List<User> users = [];

  // Method to add a new user
  static void addUser(User user) {
    users.add(user);
  }

  // Method to check if username is already taken
  static bool isUsernameTaken(String username) {
    return users.any((user) => user.username == username);
  }

  static bool isAccountRegistered(String username, String password) {
    return users.any((user) => user.username == username && user.password == password);
  }
}
