import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { IngresarComponent } from './pages/ingresar/ingresar.component';
import { InicioComponent } from './pages/inicio/inicio.component';
import { LibrosComponent } from './pages/libros/libros.component';
import { RegistroComponent } from './pages/registro/registro.component';

const routes: Routes = [
  /*SI EL USER INTENTA ACCEDER A UNA RUTA Y NO ESPECIFICA NADA LO DIRIGIMOS A INICIO*/
{path: '', component:InicioComponent},
{path: 'inicio', component:InicioComponent},
{path: 'libros', component:LibrosComponent},
{path: 'registro', component:RegistroComponent},
{path: 'ingresar', component:IngresarComponent},
/*SI EL USER INTENTA ACCEDER A UNA RUTA QUE NO HACE MATCH CON NADA LO DIRIGIMOS A REGISTRO*/
{path:'**', redirectTo: 'registro', pathMatch:'full'},];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
