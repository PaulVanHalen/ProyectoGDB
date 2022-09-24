import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InicioComponent } from './inicio/inicio.component';
import { LibrosComponent } from './libros/libros.component';



@NgModule({
  declarations: [
    InicioComponent,
    LibrosComponent,
  ],
  imports: [
    CommonModule
  ],
  exports:[
    InicioComponent,LibrosComponent
  ]
})
export class PagesModule { }
