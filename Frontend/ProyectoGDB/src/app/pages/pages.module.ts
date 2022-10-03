import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InicioComponent } from './inicio/inicio.component';
import { LibrosComponent } from './libros/libros.component';
import { RegistroComponent } from './registro/registro.component';
import { IngresarComponent } from './ingresar/ingresar.component';
import { ReactiveFormsModule } from '@angular/forms';
import { DashboardComponent } from './dashboard/dashboard.component';

@NgModule({
  declarations: [
    InicioComponent,
    LibrosComponent,
    RegistroComponent,
    IngresarComponent,
    DashboardComponent,
  ],
  imports: [
    CommonModule,
    ReactiveFormsModule
  ],
  exports:[
    InicioComponent,LibrosComponent
  ]
})
export class PagesModule { }
