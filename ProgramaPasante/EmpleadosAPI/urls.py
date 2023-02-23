from django.urls import path
from . import views

urlpatterns = [
    #path('', views.apiOverview, name='apiOverview'),

    path('employee_list', views.ShowAll, name='employee-list'),
    path('employee-detail/<str:nombre>', views.ViewProduct, name='employee-list'),
    path('employee-create', views.CreateEmployee, name='employee-create'),
    path('employee-update/<int:pk>', views.UpdateEmployee, name='employee-update'),
    path('employee-delete/<int:pk>', views.DeleteEmployee, name='employee-delete')
]