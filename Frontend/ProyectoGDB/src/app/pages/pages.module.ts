import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InicioComponent } from './inicio/inicio.component';
import { LibrosComponent } from './libros/libros.component';
import { RegistroComponent } from './registro/registro.component';
import { IngresarComponent } from './ingresar/ingresar.component';



@NgModule({
  declarations: [
    InicioComponent,
    LibrosComponent,
    RegistroComponent,
    IngresarComponent,
  ],
  imports: [
    CommonModule
  ],
  exports:[
    InicioComponent,LibrosComponent
  ]
})
export class PagesModule { }
