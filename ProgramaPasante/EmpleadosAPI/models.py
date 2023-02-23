from django.db import models

# Create your models here.

class Employee(models.Model):
    ID_EMPLEADO = models.AutoField(primary_key=True)
    NOMBRE = models.CharField(max_length=30)
    APELLIDOS = models.CharField(max_length=60)
    UBICACION = models.CharField(max_length=60)
    PUESTO = models.CharField(max_length=30)
    NUMERO_TELEFONO = models.CharField(max_length=20)
    EXTENSION = models.CharField(max_length=10)
