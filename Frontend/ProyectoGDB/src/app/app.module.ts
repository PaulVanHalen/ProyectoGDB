import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './layouts/header/header.component';
import { LayoutsModule } from './layouts/layouts.module';
import { InicioComponent } from './pages/inicio/inicio.component';
import { LibrosComponent } from './pages/libros/libros.component';
import { PagesModule } from './pages/pages.module';
import { UsuariosService } from './services/usuarios.service';
import { HttpClientModule } from '@angular/common/http';

const rutas:Routes=[
{path:'',component:InicioComponent},
{path:'libros',component:LibrosComponent},/*
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
    PagesModule,
    RouterModule.forRoot(rutas),
    HttpClientModule,
  ],
  providers: [UsuariosService],
  bootstrap: [AppComponent]
})
export class AppModule { }
