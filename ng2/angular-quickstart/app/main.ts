import { platformBrowserDynamic } from '@angular/platformBrowserDynamic';

import { AppModule } from './app.module';

const platform = platformBrowserDynamic();
platform.bootstrapModule(AppModule);
