import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { ApiService } from 'src/app/services/api.service';
import { debounceTime, finalize, map } from 'rxjs';
import { FormControl } from '@angular/forms';
import { query } from '@angular/animations';
import { createEmployee, deleteEmployee } from 'src/app/models/empleados';

@Component({
  selector: 'app-modificar',
  templateUrl: './modificar.component.html',
  styleUrls: ['./modificar.component.css']
})
export class ModificarComponent implements OnInit {
  c_employee:createEmployee = new createEmployee();
  d_employee:deleteEmployee = new deleteEmployee();
  dataTable:any = [];
  control = new FormControl();
  valueToSearch: string = "";
  public empleados: Array<any> = []
  constructor(
    private apiService: ApiService)
  {
   /*this.apiService.getEmpleados().subscribe((resp: any) =>{
    this.empleados = resp
   })*/
  }

  event() {
    this.apiService.getEmpleados
  }

  ngOnInit(): void {
    this.ObserverChangeSearch()
    this.onDataTable();
  }

  ObserverChangeSearch(){
    this.control.valueChanges
    .pipe(
      debounceTime(500)
    )
    .subscribe(query => {
      console.log(query);

      this.apiService.getEmpleadosDetail(query).subscribe(
        (res: any) => {
          this.empleados = res;
        },
        (object) => {
          console.log(object);

        }
      )
    })
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
        alert(`El empleado ${c_employee.NOMBRE} fue agregado`);
        this.clear();
        this.onDataTable();
      } else {
        alert("Error")
      }
    });
  }

  onUpdateEmployee(d_employee:deleteEmployee):void{
    this.apiService.updateEmployee(d_employee.ID_EMPLEADO, d_employee).subscribe(res => {
      if(res){
        alert(`El empleado con el codigo ${d_employee.ID_EMPLEADO} ha sido modificado`);
        this.clear2()
        this.onDataTable();
      } else {
        alert('Error')
      }
    })
  }
  
  onDeleteEmployee(ID_EMPLEADO:number):void{
    this.apiService.dropEmployee(ID_EMPLEADO).subscribe(res => {
      if(res){
        alert(`El empleado con el codigo ${ID_EMPLEADO} se ha eliminado con exito`);
        this.clear2()
        this.onDataTable();
      } else{
        alert("error")
      }
    });
  }

  onSetData(select: any){
    this.d_employee.ID_EMPLEADO = select.ID_EMPLEADO;
    this.d_employee.NOMBRE = select.NOMBRE;
    this.d_employee.APELLIDOS = select.APELLIDOS;
    this.d_employee.UBICACION = select.UBICACION;
    this.d_employee.PUESTO = select.PUESTO;
    this.d_employee.NUMERO_TELEFONO = select.NUMERO_TELEFONO;
    this.d_employee.EXTENSION = select.EXTENSION;
  }

  clear(){
    this.c_employee.NOMBRE = "";
    this.c_employee.APELLIDOS = "";
    this.c_employee.UBICACION = "";
    this.c_employee.PUESTO = "";
    this.c_employee.NUMERO_TELEFONO = "";
    this.c_employee.EXTENSION = "";
  }

  clear2(){
    this.d_employee.ID_EMPLEADO = 0;
    this.d_employee.NOMBRE = "";
    this.d_employee.APELLIDOS = "";
    this.d_employee.UBICACION = "";
    this.d_employee.PUESTO = "";
    this.d_employee.NUMERO_TELEFONO = "";
    this.d_employee.EXTENSION = "";
  }

}
