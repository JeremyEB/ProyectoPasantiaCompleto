from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import EmployeeSerializers
from .models import Employee

# create your views here

"""@api_view(['GET'])
def apiOverview(request):
    api_urls = {
        'List': '/employee-list/',
        'Detail View': '/employee-detail/<int:id>',
        'Create': '/employee-create/',
        'UPDATE': '/employee-update/<int:id>',
        'DELETE': '/employee-detail/<int:id>',
    }

    return Response(api_urls);"""

#Muestra todos los datos de la base de datos en la API
#http://127.0.0.1:8000/EmpleadosAPI/employee-list/ el link
@api_view(['GET'])
def ShowAll(request):
    employee = Employee.objects.all()
    serializer = EmployeeSerializers(employee, many=True)
    return Response(serializer.data)

#Muestra los datos del empleado buscado a traves de su ID
#http://127.0.0.1:8000/EmpleadosAPI/employee-detail/2 el link
@api_view(['GET'])
def ViewProduct(request, nombre):
    employee = Employee.objects.filter(NOMBRE=nombre)
    #employee1 = Employee.objects.filter(APELLIDOS=apellido)
    serializer = EmployeeSerializers(employee, many=True)
    return Response(serializer.data)

#Para agregar nuevos datos a traves de la API usando el codigo API
#http://127.0.0.1:8000/EmpleadosAPI/employee-create/ El link para eso
@api_view(['POST'])
def CreateEmployee(request):
    serializer = EmployeeSerializers(data=request.data)

    if serializer.is_valid():
        serializer.save()

    return Response(serializer.data)

#Para editar/actualizar un registro en la base de datos
#http://127.0.0.1:8000/EmpleadosAPI/employee-update/2 el link para eso
@api_view(['POST'])
def UpdateEmployee(request, pk):
    employee = Employee.objects.get(ID_EMPLEADO=pk)
    serializer = EmployeeSerializers(instance=employee, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

#
#
@api_view(['GET'])
def DeleteEmployee(request, pk):
    employee = Employee.objects.get(ID_EMPLEADO=pk)
    employee.delete()
    return Response('Item borrado satisfactoriamente')