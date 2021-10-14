from django.contrib import admin
from usuarios.models import *
from mensajes.models import *
from salas.models import *
from usu_salas.models import *

admin.site.register(Usuarios.usu_nombre)
admin.site.register(Mensajes)
admin.site.register(Salas)
admin.site.register(Usu_Salas)