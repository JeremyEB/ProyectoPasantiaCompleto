import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { environment } from 'src/environments/environment';
import { map, Observable } from 'rxjs';
import { createEmployee, deleteEmployee } from '../models/empleados';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  /*Endpoints */
    /*Endpoint para mostrara los empleados*/
    url = 'http://127.0.0.1:8000/EmpleadosAPI/employee_list?limit'
    /*Endpoint para buscar los empleados*/
    private origin = 'http://127.0.0.1:8000/EmpleadosAPI/employee-detail'
    /*Endpoint para agregar empleados*/
    urlCreate = 'http://127.0.0.1:8000/EmpleadosAPI/employee-create'
    /*Endpoint para eliminar a los empleados */
    urlDelete = 'http://127.0.0.1:8000/EmpleadosAPI/employee-delete'
    /* Endpoint para modificar a los empleados */
    urlUpdate = 'http://127.0.0.1:8000/EmpleadosAPI/employee-update'

  constructor(private http: HttpClient){

  }
  
  getEmpleados(){
    return this.http.get(this.url)
  }

  getEmpleadosDetail(urlDetail: string) {
    return this.http.get(`${this.origin}/${urlDetail}`);
  }

  getEmployee(){
    return this.http.get(this.urlCreate);
  }

  addEmployee(c_employee:createEmployee):Observable<createEmployee>{
    return this.http.post<createEmployee>(this.urlCreate, c_employee);
  }

  updateEmployee(ID_EMPLEADO: number, d_employee: deleteEmployee):Observable<deleteEmployee>{
    return this.http.post<deleteEmployee>(this.urlUpdate + `/${ID_EMPLEADO}`, d_employee);
  }

  dropEmployee(ID_EMPLEADO:number){
    return this.http.get(this.urlDelete + `/${ID_EMPLEADO}`);
  }
}
