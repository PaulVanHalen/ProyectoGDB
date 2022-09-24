import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { Routes } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LayoutsModule } from './layouts/layouts.module';
import { InicioComponent } from './pages/inicio/inicio.component';
import { PagesModule } from './pages/pages.module';

const rutas:Routes=[
{path:'',component:InicioComponent},
/*{path:'libros',component:LibrosComponent},
{path:'registro',component:RegistroComponent},
{path:'ingresar',component:IngresarComponent},*/

];

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    LayoutsModule,
    PagesModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
