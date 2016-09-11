interface Application {
  name: string;
}

class App implements Application {
  constructor(public name: string) {

    alert(this.name = name);
  }
}

var app = new App('hello');
