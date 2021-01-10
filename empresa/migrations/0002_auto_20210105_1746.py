# Generated by Django 3.0.8 on 2021-01-05 22:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('empresa', '0001_initial'),
        ('parroquias', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='tipoemp',
            name='parroquia',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='parroquias.Parroquia', verbose_name='Parroquia'),
        ),
        migrations.AddField(
            model_name='producto',
            name='empresa',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='empresa.Empresa', verbose_name='Empresa'),
        ),
        migrations.AddField(
            model_name='empresa',
            name='tipo_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='empresa.TipoEmp', verbose_name='Categoria'),
        ),
    ]