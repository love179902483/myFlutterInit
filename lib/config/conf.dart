enum Env {
  production,
  development,
  local,
}

class Config {
  static Env env;

  static String get host {
    switch (env) {
      case Env.production:
        print('This is product env!');
        return 'http://localhost:3000';
        break;
      case Env.development:
        print('This is development env!');
        return 'http://192.168.43.94:3000';
        break;
      case Env.local:
        print('This is local env!');
        return 'http://192.168.43.94:3000';
        break;
      default:
        print('This is development env and this is default!');
        return 'http://localhost:3000';
        break;
    }
  }
}
