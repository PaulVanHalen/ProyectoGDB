import { Component, OnInit } from '@angular/core';
import { AngularFireAuth } from '@angular/fire/compat/auth';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ChildActivationStart, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { FirebaseCodeErrorService } from 'src/app/services/firebase-code-error.service';

@Component({
  selector: 'app-ingresar',
  templateUrl: './ingresar.component.html',
  styleUrls: ['./ingresar.component.css']
})
export class IngresarComponent implements OnInit {

  loginUsuario:FormGroup;

  constructor(
    private fb: FormBuilder, 
    private afAuth: AngularFireAuth, 
    private toastr: ToastrService, 
    private router:Router,
    private firebaseError:FirebaseCodeErrorService
    ) { 

      this.loginUsuario = this.fb.group({
                        email:['',Validators.required],
                        password:['',Validators.required],
      })
    }

  ngOnInit(): void {
  }

  login(){
    const email = this.loginUsuario.value.email;
    const password = this.loginUsuario.value.password;

    this.afAuth.signInWithEmailAndPassword(email,password)
    .then((user)=>{
      this.router.navigate(['/dashboard']);
    }).catch((error)=>{
      this.toastr.error(this.firebaseError.codeError(error.code),'Error');
    })
  }
}
