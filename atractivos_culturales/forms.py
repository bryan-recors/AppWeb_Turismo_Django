from django import forms
from .models import AtractivoCultural

class FormularioAtractivoCultural(forms.ModelForm):
    #registro de atractivosnaturales
    class Meta:
        model = AtractivoCultural
        fields = ('nombre','descripcion','direccion','latitud','longitud','imagen','tipo_id','fecha','parroquia')
        labels = {
            #como quiero que se vena los labels
            'nombre': 'Nombre del Atractivo Cultural',
            'descripcion':'Descripción',
            'direccion':'Dirección',
            'latitud': 'Coordenadas Latitud',
            'longitud':'Coordenadas Longitud',
            'imagen': 'Imagen',
            'tipo': 'Elija el tipo',
            'fecha': 'Ingrese la fecha si se trata de una festividad (año-mes-dia ejm 2021-11-20)',
            'parroquia': 'Elige la parroquia'
        }
        widgets = {
            'nombre': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'Nombre del atractivo',
                }
            ),
            'descripcion': forms.Textarea(
                attrs={
                    'class': 'form-control',
                    'placeholder': 'Ingrese una descripción',
                }
            ),
            'direccion': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'Ingrese la dirección',
                }
            ),
            'latitud': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'latitud',
                }
            ),
            'longitud': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'longitud',
                }
            ),
            'imagen': forms.FileInput(
                attrs = {
                    'placeholder': 'cargue una imagen',
                }
            ),
            'tipo_id': forms.Select(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'Ingrese el tipo',
                }
            ),
            'fecha': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    #para que aparezca el calendario
                    'type':'date',
                    'placeholder': 'seleccine la fecha si se trata de una festividad',

                }
            ),
            'parroquia': forms.TextInput(
                attrs = {
                    'class': 'form-control',
                    'placeholder': 'Ingrese la parroquia',
                    #que no se pueda cambiar
                    'readonly':'readonly',
                    #que no se vea
                    'type':'hidden'
                }
            )
        }
#-------------- Magaly - Validacion -----------------------------------------------
    def clean_latitud(self):
        latitud = self.cleaned_data.get('latitud')
        if str(latitud).isalpha():
            raise forms.ValidationError('El campo "Latitud" no puede ser alfabetico')
        else:
            for i in range(len(str(latitud))):
                if str(latitud)[i].isspace():
                    raise forms.ValidationError('El campo no puede tener espacios en blanco')
        return latitud

    def clean_longitud(self):
        longitud = self.cleaned_data.get('longitud')
        if str(longitud).isalpha():
            raise forms.ValidationError('El campo "Longuitud" no puede ser alfabetico')
        else:
            for i in range(len(str(longitud))):
                if str(longitud)[i].isspace():
                    raise forms.ValidationError('El campo no puede tener espacios en blanco')
        return longitud
