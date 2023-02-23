import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { ApiService } from 'src/app/services/api.service';
import { debounceTime, empty, finalize, map } from 'rxjs';
import { FormControl } from '@angular/forms';
import { query } from '@angular/animations';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit{
  resultado = 0;
  datos: string ="";
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

  /*event() {
    this.apiService.getEmpleados
  }*/

  ngOnInit(): void {
    this.ObserverChangeSearch()
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

}
