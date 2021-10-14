from django.urls import path

from . import views

urlpatterns = [
    path('', views.indice, name='indice'),
    path('<str:room_name>/', views.sala, name='sala'),
]