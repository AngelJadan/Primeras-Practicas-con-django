from django.db import models
from usu_salas.models import Usu_Salas
from salas.models import Salas

class Mensajes(models.Model):
    men_id = models.AutoField(primary_key=True)
    men_mensaje = models.CharField(max_length=250, blank=False, null=False)
    usu_salas = models.ForeignKey(Usu_Salas, on_delete=models.CASCADE, null=False, blank=False)
    salas_sal_id = models.ForeignKey(Salas,on_delete=models.CASCADE, null=False, blank=False)

    def __str__(self):
        return self.men_id
    