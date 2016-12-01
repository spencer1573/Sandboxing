import { Component } from '@angular/core';
import { Hero } from './hero';

@Component({
    selector: 'my-app',
    template: `
      <h1>{{title}}</h1>
      <h2>My favorite hero is: {{myHero}}</h2>
      <ol>
        <li *ngFor="let hero of heroes">
          {{ hero.name }}
        </li>
      <ol>
      <p *ngIf="heroes.length > 3">there are many heroes!</p>
    `
})
export class AppComponent {
    title: string;
    myHero: string;
    //heroes: Array<number|string> = [];
    heroes: Array<Object> = [];

    constructor() {
      this.title = 'Tour of Heroes';
      console.log(new Hero(1, 'windstorm'));
      this.heroes = [
        new Hero(1, 'windstorm'),
        new Hero(13, 'Bombasto'),
        new Hero(15, 'Magenta'),
        new Hero(20, 'Tornado'),
        new Hero(21, 'Wolverine'),
        new Hero(21, 'Charles xavior'),
        new Hero(31, 'Magenta')
      ];
      this.myHero = this.heroes[Object.keys(this.heroes)[0]];

    }
}
