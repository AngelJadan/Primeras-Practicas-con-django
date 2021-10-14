# Generated by Django 3.0.8 on 2020-07-30 08:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Salas',
            fields=[
                ('sal_id', models.AutoField(primary_key=True, serialize=False)),
                ('sal_codigo', models.CharField(max_length=250)),
                ('salas_sal_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='salas.Salas')),
            ],
        ),
    ]