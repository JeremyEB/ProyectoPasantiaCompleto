import { Component, OnInit } from '@angular/core';
import { Router, RouteReuseStrategy } from '@angular/router';
import { ApiService } from 'src/app/services/api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit{
  Usuario: string;
  Password: string;

  constructor(
    private router: Router,
    ) { }

  ngOnInit(){
    
  }

  /*menu(){
    this.router.navigate(['/menu'])
  }*/

  menu(){
    console.log("Datos Usuario: ", this.Usuario);
    console.log("Datos Contraseña ", this.Password);

    if (this.Usuario == "Root" && this.Password == "12345678") {
      let datos = {Nombre_Usuario: this.Usuario, Contraseña: this.Password}
      localStorage.setItem('Datos', JSON.stringify(datos));
      this.router.navigate(['/menu'])
    } else{
      alert("Datos Incorrectos")
    }
  }

}

