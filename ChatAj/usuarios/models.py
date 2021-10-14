from django.db import models

class Usuarios(models.Model):
    usu_id = models.AutoField(primary_key=True)
    usu_nombre = models.CharField(max_length=250)
    usu_apellido = models.CharField(max_length=250)
    usu_usuario = models.CharField(max_length=250)
    usu_pass = models.CharField(max_length=250)
    usu_correo = models.EmailField()
    
