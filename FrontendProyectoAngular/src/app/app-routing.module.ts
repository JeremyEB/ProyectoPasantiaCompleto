import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarComponent } from './components/agregar/agregar.component';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { MenuComponent } from './components/menu/menu.component';
import { PagenotfoundComponent } from './components/pagenotfound/pagenotfound.component';
import { ModificarComponent } from './components/modificar/modificar.component';
import { EliminarComponent } from './components/eliminar/eliminar.component';
import { PermissionsGuard } from './guards/permissions.guard';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'login', component: LoginComponent },
  { path: 'menu', component: MenuComponent, canActivate: [PermissionsGuard] },
  { path: 'agregarEmpleado', component: AgregarComponent, canActivate: [PermissionsGuard] },
  { path: 'modificarEmpleado', component: ModificarComponent, canActivate: [PermissionsGuard] },
  { path: 'eliminarEmpleado', component: EliminarComponent, canActivate: [PermissionsGuard] },
  { path: '**', component: PagenotfoundComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
