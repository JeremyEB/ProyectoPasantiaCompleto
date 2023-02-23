import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(private router: Router) {  }

  ngOnInit() {
    
  }

  agregarEmpleado(){
    this.router.navigate(['/agregarEmpleado'])
  }

  modificarEmpleado(){
    this.router.navigate(['/modificarEmpleado'])
  }

  eliminarEmpleado(){
    this.router.navigate(['/eliminarEmpleado'])
  }

}
