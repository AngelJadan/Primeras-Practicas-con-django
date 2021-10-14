from django.db import models

class  Salas(models.Model):
    sal_id = models.AutoField(primary_key=True)
    sal_codigo = models.CharField(max_length=250)
    salas_sal_id = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True)
    
