from django.db import models
from usuarios.models import Usuarios
from salas.models import Salas

class  Usu_Salas(models.Model):
    usa_id = models.AutoField(primary_key=True)
    usuarios_usu_id = models.ForeignKey(Usuarios, on_delete=models.CASCADE,null=False, blank=False)
    salas_sal_id = models.ForeignKey(Salas, on_delete=models.CASCADE, null=False, blank=False)

    def __str__(self):
        return self.usa_id
    