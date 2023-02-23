import { Component } from '@angular/core';
import { createEmployee } from 'src/app/models/empleados';
import { ApiService } from 'src/app/services/api.service';

@Component({
  selector: 'app-agregar',
  templateUrl: './agregar.component.html',
  styleUrls: ['./agregar.component.css']
})
export class AgregarComponent {
  c_employee:createEmployee = new createEmployee();
  dataTable:any = [];

  constructor(private apiService: ApiService){
    
  }

  ngOnInit(): void{
    this.onDataTable();
  }

  onDataTable(){
    this.apiService.getEmployee().subscribe(res=> {
      this.dataTable = res;
      console.log(res)
    });
  }

  onAddEmployee(c_employee:createEmployee):void{
    this.apiService.addEmployee(c_employee).subscribe(res => {
      if(res){
        console.log(c_employee, res)
        this.clear();
        this.onDataTable();
      } else {
        alert("Error")
      }
    });
  }

  clear(){
    this.c_employee.NOMBRE = "";
    this.c_employee.APELLIDOS = "";
    this.c_employee.UBICACION = "";
    this.c_employee.PUESTO = "";
    this.c_employee.NUMERO_TELEFONO = "";
    this.c_employee.EXTENSION = "";
  }



}
