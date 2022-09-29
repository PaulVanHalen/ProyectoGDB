import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class UsuariosService {

  url="http://localhost:8088";
  http:any;

  constructor(private httpClient:HttpClient) { }

  getRegistro():Observable<any>
  {
    return this.http.get(this.url);
  }

  saveRegistro(Registro: Registro):Observable<any>{
    return this.http.post(this.url, Registro);
  }

  modificarRegistro(id: string, Registro: Registro):Observable<any>
  {
    return this.http.put(this.url+'/'+id, Registro);
  }
}
