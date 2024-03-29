# Generated by Django 3.0.8 on 2021-01-05 22:46

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Empresa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100, unique=True)),
                ('direccion', models.CharField(max_length=100)),
                ('latitud', models.CharField(max_length=200)),
                ('longitud', models.CharField(max_length=200)),
                ('descripcion', models.TextField(blank=True, null=True)),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='empresa/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Empresa',
                'verbose_name_plural': 'Empresas',
                'ordering': ['nombre'],
            },
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100, unique=True)),
                ('detalle', models.CharField(max_length=300, verbose_name='Descripción')),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='productos/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Producto',
                'verbose_name_plural': 'Productos de la empresa',
                'ordering': ['nombre'],
            },
        ),
        migrations.CreateModel(
            name='TipoEmp',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100, unique=True, verbose_name='Categoria')),
                ('descripcion', models.CharField(blank=True, max_length=125, null=True, verbose_name='Descripcion')),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='tipo_empresa/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Categoria de la empresa',
                'verbose_name_plural': 'Categoria',
                'ordering': ['nombre'],
            },
        ),
    ]
