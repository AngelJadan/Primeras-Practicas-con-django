from django.http import HttpResponse
from django.template import Template, Context
from django.template import loader

def registroUsuario(request):
    plant=loader.get_template('registrarUsuario.html')
    con=Context()
    docu= plant.render()
    return HttpResponse(docu)

def inicioUsuario(requiest):
    plant=loader.get_template('inicioUsuario.html')
    con=Context()
    docu= plant.render()
    return HttpResponse(docu)