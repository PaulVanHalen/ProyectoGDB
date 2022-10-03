import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class FirebaseCodeErrorService {

  constructor() { }

  codeError(code:string){
    switch (code) {
      //Mensajes para el registro
      case 'auth/email-already-in-use':
        return 'El usuario ya existe, ingrese otro email';
      case 'auth/weak-password':
        return 'La contraseña es debil, minimo de 8 caracteres';
      case 'auth/invalid-email':
        return 'Correo invalido';
      //Mensajes para el login
      case 'auth/wrong-password':
        return 'Contraseña incorrecta';
      case 'auth/user-not-found':
        return 'El usuario no existe';
    
      default:
        return 'Error desconocido';
    }
  }
}
