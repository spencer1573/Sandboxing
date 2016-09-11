interface Application {
  name: string;
}

class App implements Application {
  constructor(public name: string) {

    this.name = name;
    alert(this.name = name);
  }
}

var app = new App('hello');
