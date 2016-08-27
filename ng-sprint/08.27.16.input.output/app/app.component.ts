import { Component } from 'angular2/core';
import { HTTP_PROVIDERS } from 'angular2/http';

import { CharactersComponent } from './characters.component';

@Component({
  selector: 'story-app',
  template: '.app/app.component.html',
  directives: [CharactersComponent],
  providers: [HTTP_PROVIDERS]
})
export class AppComponent {
  changed(changedCharacter: any) {
    if (changedCharacter) {
      console.log(`Event Emitter said you selected ${changedCharacter.name}`);
    }
  }
}
