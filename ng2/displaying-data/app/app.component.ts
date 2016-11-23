import { Component } from '@angular/core';

@Component({
    selector: 'my-app',
    template: `
      <h1>{{title}}</h1>
      <h2>My favorite hero is: {{myHero}}</h2>
    `
})
export class AppComponent {
    title: string;
    myHero: string;

    constructor() {
      this.title = 'Tour of Heroes';
      this.myHero = 'Windstorm';
    }
}
