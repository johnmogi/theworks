import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/pages/home/home.component';
import { WorksComponent } from './components/pages/works/works.component';


const routes: Routes = [
  { path: "home", component: HomeComponent },
  { path: "works", component: WorksComponent },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
