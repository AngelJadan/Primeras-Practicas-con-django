from django import forms
from usuarios.models import Usuarios
class UsuarioForm(forms.ModelForm):
    class Meta:
        model= Usuarios
        fields = [
        'usu_nombre',
        'usu_apellido',
        'usu_usuario',
        'usu_pass',
        'usu_correo'
    ]