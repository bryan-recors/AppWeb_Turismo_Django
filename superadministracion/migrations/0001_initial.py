# Generated by Django 3.0.8 on 2021-01-10 16:43

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='InformacionTurismo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=150, unique=True, verbose_name='Titulo')),
                ('descripcion', models.TextField(blank=True, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Informacion de la página',
                'verbose_name_plural': 'registros',
                'ordering': ['titulo'],
            },
        ),
    ]