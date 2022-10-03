import { Component, OnInit } from '@angular/core';
import {ReactiveFormsModule, FormBuilder, FormGroup, Validators} from '@angular/forms';
import { AngularFireAuth } from '@angular/fire/compat/auth'
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';
import { FirebaseCodeErrorService } from 'src/app/services/firebase-code-error.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {

  RegistroForm!: FormGroup;
  submitted = false;
  constructor(
    private fb: FormBuilder, 
    private afAuth: AngularFireAuth, 
    private toastr: ToastrService, 
    private router:Router,
    private firebaseError: FirebaseCodeErrorService
    ) {

    this.createForm();
  }
    
  createForm() {
    this.RegistroForm = this.fb.group({
                        nombre:            ['',  [Validators.required]],
                        apellido:          ['',  [Validators.required]],
                        documento:         ['',  [Validators.required]],
                        fechaNacimiento:   ['',  [Validators.nullValidator]],
                        domicilio:         ['',  [Validators.maxLength(200)]],
                        telefono:          ['',  [Validators.maxLength(10)]],
                        email:             ['',  [Validators.required, Validators.email]],
                        confirmarEmail:    ['',  [Validators.required, Validators.email]],
                        password:          ['',  [Validators.required, Validators.maxLength(8)]],
                        confirmarPassword: ['',  [Validators.required, Validators.maxLength(8)]]
        
      });

    this.RegistroForm.controls["nombre"].valueChanges.subscribe(data => {
        console.log(data);
                  });
    this.RegistroForm.controls["apellido"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["documento"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["fechaNacimiento"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["domicilio"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["telefono"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["email"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["confirmarEmail"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["password"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    this.RegistroForm.controls["confirmarPassword"].valueChanges.subscribe(data => {
                    console.log(data);
                  });
    }
                            
    onSubmit() {
      /*GUARDO LOS VARIABLES DEL FORMULARIO QUE ME SERVIRAN PARA EL LOGIN*/
      const email = this.RegistroForm.value.email;
      const password = this.RegistroForm.value.password;
      const confirmarPassword = this.RegistroForm.value.confirmarPassword;

      if (password !== confirmarPassword) {
        this.toastr.error('Las contraseñas deben ser las mismas','Error');
        return;
      }

      this.afAuth
      .createUserWithEmailAndPassword(email,password)
      .then(user => {
        this.toastr.success('Usuario registrado con exito','  Registro exitoso');
        this.router.navigate(['/ingresar']);
        console.log(user);
      })
      .catch((error)=>{
        console.log(error);
        this.toastr.error(this.firebaseError.codeError(error.code),'Error')
      })

      this.submitted = true;
       if (this.RegistroForm.invalid) {
        return;
        }
      }
          
  get nombre() { return this.RegistroForm.get('nombre') }
  get apellido() { return this.RegistroForm.get('apellido') }
  get documento() { return this.RegistroForm.get('documento') }
  get fechaNacimiento() { return this.RegistroForm.get('fechaNacimiento') }
  get domicilio() { return this.RegistroForm.get('domicilio') }
  get telefono() { return this.RegistroForm.get('telefono') }
  get email() { return this.RegistroForm.get('email') }
  get confirmarEmail() { return this.RegistroForm.get('confirmarEmail') }
  get password() { return this.RegistroForm.get('password') }
  get confirmarPassword() { return this.RegistroForm.get('confirmarPassword') }
  get f() {return this.RegistroForm.controls; }

  ngOnInit() {}                               
  
  

    
    
}
