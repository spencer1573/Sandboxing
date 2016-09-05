import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';
import { ExperimentsComponent } from './experiments/experiments.component';
import { RouterConfig } from '@angular/router';

export const routes: RouterConfig = [
  {path: '',            component: HomeComponent },
  {path: 'home',        component: HomeComponent },
  {path: 'about',       component: AboutComponent },
  {path: 'experiments', component: ExperimentsComponent },
  {path: '*',           component: HomeComponent }
];
