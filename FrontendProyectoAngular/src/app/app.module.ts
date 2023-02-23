import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AgregarComponent } from './components/agregar/agregar.component';
import { FooterComponent } from './components/footer/footer.component';
import { HeaderComponent } from './components/header/header.component';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { MenuComponent } from './components/menu/menu.component';
import { PagenotfoundComponent } from './components/pagenotfound/pagenotfound.component';
import { ModificarComponent } from './components/modificar/modificar.component';
import { EliminarComponent } from './components/eliminar/eliminar.component';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from 'src/shared/material.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { SearchPipe } from './pipes/search.pipe';
import { Header2Component } from './components/header2/header2.component';


@NgModule({
  declarations: [
    AppComponent,
    AgregarComponent,
    FooterComponent,
    HeaderComponent,
    HomeComponent,
    LoginComponent,
    MenuComponent,
    PagenotfoundComponent,
    ModificarComponent,
    EliminarComponent,
    SearchPipe,
    Header2Component,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MaterialModule,
    FormsModule,
    ReactiveFormsModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
