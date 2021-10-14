from django.shortcuts import render
from django.http import  HttpResponse
from usuarios.models import Usuarios

def login(request):
    return render(request,"login.html")

def inicio(request):
    if request.GET["user"]:
        usu = request.GET["user"]
        ren=render(request,"inicioUsuario.html",{"usuario":usu})
        #ren=render(request,"inicioUsuario.html")
    else:
        mensaje="Acceso fallido"
        ren=HttpResponse(mensaje)
    return ren