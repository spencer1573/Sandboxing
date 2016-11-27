import { Component } from '@angular/core';

@Component({
    selector: 'my-app',
    template: `
      <h1>{{title}}</h1>
      <h2>My favorite hero is: {{myHero}}</h2>
      <ol>
        <li *ngFor="let hero of heroes">
          {{ hero }}
        </li>
      <ol>
    `
})
export class AppComponent {
    title: string;
    myHero: string;
    heroes: Array<string> = [];

    constructor() {
      this.title = 'Tour of Heroes';
      this.heroes = [
        'windstorm',
        'wolverine',
        'charles xavior',
        'magenta',
        'tornado'
      ];
      this.myHero = this.heroes[0];

    }
}
